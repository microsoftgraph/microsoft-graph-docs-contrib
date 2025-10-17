---
title: "win32LobAppFileSystemOperationType enum type"
description: "A list of possible operations for rules used to make determinations about an application based on files or folders. Unless noted, can be used with either detection or requirement rules."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# win32LobAppFileSystemOperationType enum type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A list of possible operations for rules used to make determinations about an application based on files or folders. Unless noted, can be used with either detection or requirement rules.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Default. Indicates that the rule does not have the operation type configured.|
|exists|1|Indicates that the rule evaluates whether the specified file or folder exists.|
|modifiedDate|2|Indicates that the rule compares the modified date of the specified file against a provided comparison value by DateTime comparison.|
|createdDate|3|Indicates that the rule compares the created date of the specified file against a provided comparison value by DateTime comparison.|
|version|4|Indicates that the rule compares the detected version of the specified file against a provided comparison value via version semantics (both operand values will be parsed as versions and directly compared). If the value read at the given registry value is not discovered to be in version-compatible format, a string comparison will be used instead.|
|sizeInMB|5|Indicates that the rule compares the size of the file in MiB (rounded down) against a provided comparison value by integer comparison.|