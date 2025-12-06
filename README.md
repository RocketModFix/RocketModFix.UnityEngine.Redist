# RocketModFix.UnityEngine.Redist

[![RocketModFix.UnityEngine.Redist][badge_RocketModFix.UnityEngine.Redist]][nuget_package_RocketModFix.UnityEngine.Redist]

You simply install a NuGet package in your IDE to get all and the latest UnityEngine libraies. If you're tired to copy 100+ libraries into your project this is a great solution for you.

## Breaking Changes

Starting with UnityEngine Redist 2022.3.62.1, UnityEx.dll is shipped only with the Unturned Redist package, because it is part of Unturned rather than the Unity runtime. If you still rely on UnityEx.dll, please obtain it from the [Unturned Redist package](https://www.nuget.org/packages/RocketModFix.Unturned.Redist.Client)

## Installation

Installation is done by using the [RocketModFix.UnityEngine.Redist][nuget_package_RocketModFix.UnityEngine.Redist] NuGet package.

[nuget_package_RocketModFix.UnityEngine.Redist]: https://www.nuget.org/packages/RocketModFix.UnityEngine.Redist
[badge_RocketModFix.UnityEngine.Redist]: https://img.shields.io/nuget/v/RocketModFix.UnityEngine.Redist?label=RocketModFix.UnityEngine.Redist&link=https%3A%2F%2Fwww.nuget.org%2Fpackages%2FRocketModFix.UnityEngine.Redist

## Update

If you want to update redist then run `update.bat` and input the path to the Unturned Managed directory

## Finding the Unity Engine version

1. Open your Unturned install folder (for example `C:\Program Files (x86)\Steam\steamapps\common\Unturned`).
2. Right click `UnityPlayer.dll` (or `Unturned.exe`) in that root folder and choose Properties.
3. Go to the Details tab and copy the `File version` value - that's the Unity Engine version.
4. Optionally install the same Unity Editor version and copy its `.xml` docs if they're missing in Managed, so your IDE still shows API hints.

## Licensing

- Packaging scripts/metadata: MIT license (see `LICENSE` in the repo root).
- Unity binaries we redistribute: Unity Terms of Service and Unity Software Additional Terms (see `Unity-License.txt` in the package or https://unity.com/legal/terms-of-service and https://unity.com/legal/terms-of-service/software for the current text).
