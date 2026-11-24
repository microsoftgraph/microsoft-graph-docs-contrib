---
title: "printerProvidedReleaseSupport resource type"
description: "Represents the secure release capabilities supported by a physical printer."
author: nilakhan
ms.date: 09/23/2026
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
---

# printerProvidedReleaseSupport resource type

Namespace: microsoft.graph

Represents the secure release capabilities supported by a physical printer. Universal Print reports these capabilities as read-only in the **printerProvidedReleaseSupport** property of the [printer](printer.md) resource.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isPullPrintEnabled|Boolean|Indicates whether the physical printer supports pull printing using printer-provided job release methods.|
|jobReleaseMethods|printJobReleaseMethods|The release methods that the physical printer supports. This flagged enumeration allows multiple members to be selected simultaneously, and multiple methods are returned as a comma-separated string, such as `badge,biometrics`. The possible values are: `none`, `unknown`, `badge`, `biometrics`, `usernamePassword`, `unknownFutureValue`. The member `none` indicates that the printer doesn't support a device-provided release method, and `unknown` indicates that the method isn't known. `unknownFutureValue` is the sentinel for unrecognized future enumeration values.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.printerProvidedReleaseSupport"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printerProvidedReleaseSupport",
  "isPullPrintEnabled": "Boolean",
  "jobReleaseMethods": "String"
}
```
