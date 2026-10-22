# icon-eva

[Eva Icons](https://github.com/akveo/eva-icons) as 490 pre-rendered, 24×24 `CrImage` constants for Crystal.

```yaml
dependencies:
  icon-eva:
    github: kojix2/icon-eva
```

```crystal
require "icon-eva"

icon = Icon::Eva::Heart24Outline
```

Names follow the SVG filenames, size, and style. Use `require "icon-eva/24_outline"` or `require "icon-eva/24_filled"` to load one style. PNG data lives in `src/data/*.tsv` and is loaded by a Crystal macro. Constants are shared, mutable images; copy before editing.

## Regenerate

Requires Python 3, librsvg, Cairo, and an upstream ZIP from the project linked above.

```bash
python3 scripts/generate.py /path/to/eva.zip
python3 scripts/generate.py /path/to/eva.zip --check
```

If upstream adds a new style, add its `src/<group>.cr` wrapper and require it from `src/icon-eva.cr`.

MIT: [shard](LICENSE), [upstream icons](LICENSE.eva).
