---
title: "agreementFileData resource type"
description: "Represents the blob of an Azure Active Directory (Azure AD) terms of use agreement file."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "governance"
author: "AlexFilipin"
---

# agreementFileData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the blob of an Azure Active Directory (Azure AD) terms of use agreement file.

## Properties
| Property       | Type | Description |
|:-------------|:------------|:------------|
|data|Binary|Data that represents the terms of use PDF document. Read-only. <br/><br/>**Note:** You can use the .NET [Convert.ToBase64String](/dotnet/api/system.convert.tobase64string) method to convert your file to binary data for uploading using the [Create agreements](../api/termsofusecontainer-post-agreements.md) API. A sample syntax using this method in PowerShell is `[convert]::ToBase64String((Get-Content -path "your_file_path" -Encoding byte))`. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.agreementFileData"
}-->

```json
{
  "data": "Binary"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "agreementFileData resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


