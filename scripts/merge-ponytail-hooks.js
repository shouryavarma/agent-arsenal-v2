const fs = require('fs');
const path = require('path');

const hooksPath = 'C:/Users/mahas/.claude/hooks/hooks.json';
const ponytailPath = 'C:/Users/mahas/ponytail/hooks/claude-codex-hooks.json';

const hooks = JSON.parse(fs.readFileSync(hooksPath, 'utf8'));
const ponytailHooks = JSON.parse(fs.readFileSync(ponytailPath, 'utf8'));

// The CLAUDE_PLUGIN_ROOT variable won't point to ponytail since ECC owns it.
// Resolve absolute paths for ponytail hook commands.
const ponytailDir = 'C:/Users/mahas/ponytail';

for (const [event, entries] of Object.entries(ponytailHooks.hooks || {})) {
  if (!hooks.hooks[event]) {
    hooks.hooks[event] = [];
  }

  for (const entry of entries) {
    // Resolve ${CLAUDE_PLUGIN_ROOT} to absolute path
    const resolved = JSON.parse(JSON.stringify(entry));
    for (const h of resolved.hooks) {
      if (h.command) {
        h.command = h.command.replace(/\$\{CLAUDE_PLUGIN_ROOT\}/g, ponytailDir.replace(/\\/g, '/'));
      }
      if (h.commandWindows) {
        h.commandWindows = h.commandWindows.replace(/\$env:CLAUDE_PLUGIN_ROOT/g, ponytailDir);
      }
    }
    // Add a unique id if not present
    if (!resolved.id && event) {
      resolved.id = `ponytail:${event.toLowerCase()}`;
    }
    if (!resolved.description) {
      resolved.description = `Ponytail ${event} hook`;
    }
    hooks.hooks[event].push(resolved);
  }
}

fs.writeFileSync(hooksPath, JSON.stringify(hooks, null, 2) + '\n', 'utf8');
console.log('Merged ponytail hooks into', hooksPath);
