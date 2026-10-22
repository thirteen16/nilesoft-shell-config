// Active configuration. Menu selection, order and commands: imports/table-order.nss and imports/all-files.nss.
settings
{
    priority=1
    exclude.where = !process.is_explorer
    showdelay=200
    modify.remove.duplicate=1
    tip.enabled=true
}

import 'imports/theme.nss'
import 'imports/images.nss'

import 'imports/all-files.nss'
import 'imports/table-order.nss'
// Desktop shortcut command uses scripts/SendToNative.exe directly.

