# Flask Jinja2 Server-Side Template Injection

[Vulhub](https://vulhub.org)'s [`flask/ssti`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/flask/ssti) environment, by
phith0n and the Vulhub contributors: a Flask 1.1.1 application that renders the `name` parameter as part of a Jinja2 template. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machine, and
the machine runs Vulhub's published image `vulhub/flask:1.1.1` with the application copied in ([`build/web/`](build/web)); the environment folder is vendored in [`build/web/app/`](build/web/app) and the image's Dockerfile in [`base/`](base).

| Machine | Service |
| --- | --- |
| web | Flask 1.1.1 application (gunicorn) on port 8000 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:8000/?name=you. The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: Vulhub's
[README](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/flask/ssti/README.md) for this environment, with the walkthrough and references.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as Vulhub ([LICENSE](LICENSE)). The vulnerable software inside the image keeps its own licence.
This environment is deliberately vulnerable: keep it isolated.
