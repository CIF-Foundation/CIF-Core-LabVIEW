# Instrument Studio Plugin SDK (NI)

This directory contains the Instrument Studio plugin SDK and related
documentation originally provided by National Instruments (NI).

## License

**This directory is not covered by the repository's Apache 2.0 license.**

These files remain under NI's [General Purpose Software License Agreement
(GPSLA)](https://www.ni.com/en/about-ni/legal/software-license-agreement.html).
See [LICENSE](LICENSE) in this directory.

Copyright National Instruments Corporation.

## Contents

| Path | Description |
|---|---|
| `PluginSDK/` | LabVIEW VIs and classes for Instrument Studio plugin development |
| `Documentation/` | Reference documentation (for example, `.gplugindata` format) |

## Relationship to CIF Core

CIF Core uses this SDK for Instrument Studio UI integration (see
`CIF_Core_UI.lvproj`). The rest of the repository is licensed separately by
CIF Foundation under Apache 2.0 — see the [repository README](../../README.md).

When contributing to CIF Core, do not relicense or replace NI copyright notices
in this directory unless you have rights from NI to do so.
