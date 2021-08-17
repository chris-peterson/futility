# Overview

**F**(ile) + **utility** = **futility**

Utilities for working with files in [PowerShell](https://github.com/powershell/powershell#-powershell)

## Status

[![PowerShell Gallery Version](https://img.shields.io/powershellgallery/v/futility)](https://www.powershellgallery.com/packages/futility)
[![PowerShell Gallery](https://img.shields.io/powershellgallery/dt/futility?color=green)](https://www.powershellgallery.com/packages/futility)
[![GitHub license](https://img.shields.io/github/license/chris-peterson/futility.svg)](LICENSE)
[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/chris-peterson/futility/CI?label=ci)](https://github.com/chris-peterson/futility/actions/workflows/deploy.yml)

## Getting Started

```powershell
Install-Module -Name futility
```

## Commands

### Get-OldestLastWriteTime

(aka `oldest`)

Accepts pipeline input and finds the oldest modified time.  The format string defaults to `u`, but can be overridden by `-DateFormatString` (`-f`)

```powershell
gci | oldest -f 'yyyy-MM-dd'
```

```text
2021-08-15
```

### Get-NewestLastWriteTime

(aka `newest`)

Accepts pipeline input and finds the newest modified time.  The format string defaults to `u`, but can be overridden by `-DateFormatString` (`-f`)

```powershell
gci | newest -f 'yyyy-MM-dd'
```

```text
2021-08-17
```
