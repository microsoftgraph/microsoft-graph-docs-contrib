---
title: "win32LobAppFileSystemOperationType enum type"
description: "A list of possible operations for rules used to make determinations about an application based on files or folders. Unless noted, can be used with either detection or requirement rules."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: enumPageType
---

# win32LobAppFileSystemOperationType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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
|doesNotExist|6|Indicates that the rule evaluates whether the specified file or folder does not exist. It is the functional inverse of an equivalent rule that uses operation type `exists`.|
|sizeInBytes|7|Indicates that the rule compares the size of the file in bytes against a provided comparison value by integer comparison.|
|appVersion|8|Indicates that the rule compares the detected version of the file against a provided comparison value via version semantics (both operand values will be parsed as versions and directly compared). If the detected version of the file is not discovered to be in version-compatible format, a string comparison will be used instead. This is similar to a rule with operation type `version`, but it also collects and reports the detected version value to report as the discovered version of the app installed on the device when the rule evaluates to `true`. Only one rule with this type may be specified.|
|unknownFutureValue|9|Evolvable enumeration sentinel value. Do not use.|