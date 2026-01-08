---
title: "customSubjectAlternativeName resource type"
description: "Custom Subject Alternative Name definition"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# customSubjectAlternativeName resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Custom Subject Alternative Name definition

## Properties
|Property|Type|Description|
|:---|:---|:---|
|sanType|[subjectAlternativeNameType](../resources/intune-shared-subjectalternativenametype.md)|Custom SAN Type. The possible values are: `none`, `emailAddress`, `userPrincipalName`, `customAzureADAttribute`, `domainNameService`, `universalResourceIdentifier`.|
|name|String|Custom SAN Name|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customSubjectAlternativeName"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customSubjectAlternativeName",
  "sanType": "String",
  "name": "String"
}
```