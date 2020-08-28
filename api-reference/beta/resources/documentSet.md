---
author: swapnil1993
ms.author: swapnil1993
ms.date: 08/28/2020
title: DocumentSet
---
# DocumentSet resource type

The **documentSet** resource contains metadata about document set settings.

## JSON representation

Here is a JSON representation of a **documentSet** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.documentSet" } -->

```json
{
  "shouldPrefixNameToFile": true,
  "allowedContentTypes": [{ "@type": "microsoft.graph.contentTypeInfo" }],
  "defaultContents": [{ "@type": "microsoft.graph.documentSetContent" }],
  "propagateWelcomePageChanges": false,
  "sharedColumns": [{ "@type": "microsoft.graph.columnDefinition" }],
  "welcomePageColumns": [{ "@type": "microsoft.graph.columnDefinition" }],
  "welcomePageUrl": "string"
}
```

## Properties

| Property name  | Type    | Description
|:---------------|:--------|:--------------------------------------------------
| shouldPrefixNameToFile | boolean  | Add the name of the Document Set to each file name.
| allowedContentTypes | Collection(microsoft.graph.contentTypeInfo) | Content types allowed in document set.
| defaultContents     | Collection(microsoft.graph.documentSetContent) | Default contents of document set.  
| propagateWelcomePageChanges | boolean | Specifies whether to push welcome page changes to inherited content types.  
| sharedColumns       | Collection(microsoft.graph.columnDefinition) | Columns edited on the document set that synchronize to all documents in the set. These are read-only on the documents themselves 
| welcomePageColumns  | Collection(microsoft.graph.columnDefinition)  | Specifies columns to show on the welcome page for the Document Set.  
| welcomePageUrl      | string | Welcome page absolute Url.  

[contentTypeInfo]: contentTypeInfo.md
[documentSetContent]: documentSetContent.md
<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/DocumentSet"
} -->
