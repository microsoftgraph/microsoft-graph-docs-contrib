---
title: "identityGovernance resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# identityGovernance resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List identityGovernances](../api/identitygovernance-list.md)|[identityGovernance](../resources/identitygovernance.md) collection|Get a list of the [identityGovernance](../resources/identitygovernance.md) objects and their properties.|
|[Create identityGovernance](../api/identitygovernance-create.md)|[identityGovernance](../resources/identitygovernance.md)|Create a new [identityGovernance](../resources/identitygovernance.md) object.|
|[Get identityGovernance](../api/identitygovernance-get.md)|[identityGovernance](../resources/identitygovernance.md)|Read the properties and relationships of an [identityGovernance](../resources/identitygovernance.md) object.|
|[Update identityGovernance](../api/identitygovernance-update.md)|[identityGovernance](../resources/identitygovernance.md)|Update the properties of an [identityGovernance](../resources/identitygovernance.md) object.|
|[Delete identityGovernance](../api/identitygovernance-delete.md)|None|Deletes an [identityGovernance](../resources/identitygovernance.md) object.|
|[List accessReviewSet](../api/identitygovernance-list-accessreviews.md)|[accessReviewSet](../resources/accessreviewset.md) collection|Get the accessReviewSet resources from the accessReviews navigation property.|
|[Create accessReviewSet](../api/identitygovernance-post-accessreviews.md)|[accessReviewSet](../resources/accessreviewset.md)|Create a new accessReviewSet object.|
|[List appConsentApprovalRoute](../api/identitygovernance-list-appconsent.md)|[appConsentApprovalRoute](../resources/appconsentapprovalroute.md) collection|Get the appConsentApprovalRoute resources from the appConsent navigation property.|
|[Create appConsentApprovalRoute](../api/identitygovernance-post-appconsent.md)|[appConsentApprovalRoute](../resources/appconsentapprovalroute.md)|Create a new appConsentApprovalRoute object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessReviews|[accessReviewSet](../resources/accessreviewset.md)|**TODO: Add Description**|
|appConsent|[appConsentApprovalRoute](../resources/appconsentapprovalroute.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance"
}
```

