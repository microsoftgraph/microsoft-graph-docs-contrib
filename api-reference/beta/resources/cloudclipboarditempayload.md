---
title: "cloudClipboardItemPayload resource type"
description: "Information about the content of cloudClipboardItem."
author: "yuechen7"
ms.localizationpriority: medium
ms.prod: "pdrs"
doc_type: resourcePageType
---

# cloudClipboardItemPayload resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the information about the actual content of a [cloudClipboardItem](../resources/cloudclipboarditem.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|String|The `formatName` version of the value of a cloud clipboard **encoded in base64**.|
|formatName|String|Refer to the table below.|

Here is the table for the possible `formatName` values and their corresponding Windows clipboard formats.
| FormatName                    | Description                           | Corresponding Windows Clipboard Formats |
|:---|:---|:---|
| AnsiText                      | ANSI Text Format                      | CF_TEXT                                 |
| Text                          | Unicode Text Format                   | CF_UNICODETEXT                          |
| UniformResourceLocatorW       | Unicode URL Format                    | [CFSTR_INETURLW](/windows/win32/shell/clipboard#cfstr_ineturl)                          |
| UniformResourceLocator        | ANSI URI Format                       | [CFSTR_INETURLA](/windows/win32/shell/clipboard#cfstr_ineturl)                          |
| RichTextFormat                | Rich Text Format                      | [Registered Clipboard Format](/windows/win32/dataxchg/clipboard-formats#registered-clipboard-formats)  |
| HTMLFormat                    | HTML Format                           | [CF_HTML](/windows/win32/dataxchg/html-clipboard-format)  |
| {Custom}                      | Custom Format defined by clients to identify application-specific formats. It can only be understood and handled by the client that created it.   | N/A  |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudClipboardItemPayload"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudClipboardItemPayload",
  "content": "String",
  "formatName": "String"
}
```

