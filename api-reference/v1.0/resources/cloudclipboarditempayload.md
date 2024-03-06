---
title: "cloudClipboardItemPayload resource type"
description: "Contains the specific details of the content found within a cloudClipboardItem."
author: "yuechen7"
ms.localizationpriority: medium
ms.prod: "project-rome"
doc_type: resourcePageType
---

# cloudClipboardItemPayload resource type

Namespace: microsoft.graph


Contains the specific details of the content found within a [cloudClipboardItem](../resources/cloudclipboarditem.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|String|The `formatName` version of the value of a cloud clipboard **encoded in base64**.|
|formatName|String|For a list of possible values see [formatName values](#formatname-values).|

### formatName values
|Name |Description |Windows clipboard format|
|:---|:---|:---|
| AnsiTextBase64                      | ANSI text format                      | CF_TEXT                                 |
| TextBase64                          | Unicode text format                   | CF_UNICODETEXT                          |
| UniformResourceLocatorWBase64       | Unicode URI format                    | [CFSTR_INETURLW](/windows/win32/shell/clipboard#cfstr_ineturl)                          |
| UniformResourceLocatorBase64        | ANSI URI format                       | [CFSTR_INETURLA](/windows/win32/shell/clipboard#cfstr_ineturl)                          |
| RichTextFormatBase64                | Rich text format                      | [Registered Clipboard Format](/windows/win32/dataxchg/clipboard-formats#registered-clipboard-formats)  |
| HTMLFormatBase64                    | HTML format                           | [CF_HTML](/windows/win32/dataxchg/html-clipboard-format)  |
| {Custom}                      | Custom format defined by clients to identify application-specific formats. The client that creates it can only understand it and handle it.   | NA  |

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

