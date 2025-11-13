---
title: "accessReviewResourceDataUploadSessionContextData resource type."
description: "Metadata related to the access review instance for which the customDataProvidedResourceUploadSession is created."
author: "pratima-cloudknox"
ms.date: 10/09/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessReviewResourceDataUploadSessionContextData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Metadata related to the access review instance for which the [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) was created. 


## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessReviewId|String|The access review definition id.|
|accessReviewInstanceId|String|The access review instance id.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewResourceDataUploadSessionContextData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewResourceDataUploadSessionContextData",
  "accessReviewId": "String",
  "accessReviewInstanceId": "String"
}
```

