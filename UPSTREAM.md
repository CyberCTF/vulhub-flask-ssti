# Upstream

| | |
| --- | --- |
| Project | Vulhub |
| Repository | https://github.com/vulhub/vulhub |
| Environment | `flask/ssti` |
| Version | default branch (Vulhub has no releases) |
| Commit | 8fd63916f7a8711e2e01dda0d27237e4d6175d38 |
| Licence | MIT |

| Here | Vulhub path |
| --- | --- |
| `build/web/app/` | [`flask/ssti`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/flask/ssti) |
| `base/flask/1.1.1/` | [`base/flask/1.1.1`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/base/flask/1.1.1): the Dockerfile of `vulhub/flask:1.1.1` |

The vendored folders are that commit, unchanged. The lab runs Vulhub's published image `vulhub/flask:1.1.1`, pinned by tag (as Vulhub's own compose file does); its Dockerfile is vendored under `base/` to show how it is built. Building from `base/` instead would download the vulnerable software from its original sources, some of which are gone.

`build/web/Dockerfile` starts from `vulhub/flask:1.1.1` and copies in `src/`, which Vulhub's compose file mounts on `/app` (Isoloom has no bind mounts).

To update, replace the vendored folders with a newer Vulhub commit, then change this file.
