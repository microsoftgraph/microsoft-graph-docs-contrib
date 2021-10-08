---
title: "Create permissionGrantConditionSet"
description: "Create a new permissionGrantConditionSet object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create permissionGrantConditionSet
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new permissionGrantConditionSet object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /permissionGrantPolicy/excludes
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) object.

The following table shows the properties that are required when you create the [permissionGrantConditionSet](../resources/permissiongrantconditionset.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|permissionClassification|String|**TODO: Add Description**|
|permissionType|permissionType|**TODO: Add Description**. The possible values are: `application`, `delegated`, `delegatedUserConsentable`.|
|resourceApplication|String|**TODO: Add Description**|
|permissions|String collection|**TODO: Add Description**|
|clientApplicationIds|String collection|**TODO: Add Description**|
|clientApplicationTenantIds|String collection|**TODO: Add Description**|
|clientApplicationPublisherIds|String collection|**TODO: Add Description**|
|clientApplicationsFromVerifiedPublisherOnly|Boolean|**TODO: Add Description**|
|certifiedClientApplicationsOnly|Boolean|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_permissiongrantconditionset_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/permissionGrantPolicy/excludes
Content-Type: application/json
Content-length: 501

{
  "@odata.type": "#Microsoft.DirectoryServices.permissionGrantConditionSet",
  "permissionClassification": "String",
  "permissionType": "String",
  "resourceApplication": "String",
  "permissions": [
    "String"
  ],
  "clientApplicationIds": [
    "String"
  ],
  "clientApplicationTenantIds": [
    "String"
  ],
  "clientApplicationPublisherIds": [
    "String"
  ],
  "clientApplicationsFromVerifiedPublisherOnly": "Boolean",
  "certifiedClientApplicationsOnly": "Boolean"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.permissionGrantConditionSet"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.DirectoryServices.permissionGrantConditionSet",
  "id": "2b6bff13-ff13-2b6b-13ff-6b2b13ff6b2b",
  "permissionClassification": "String",
  "permissionType": "String",
  "resourceApplication": "String",
  "permissions": [
    "String"
  ],
  "clientApplicationIds": [
    "String"
  ],
  "clientApplicationTenantIds": [
    "String"
  ],
  "clientApplicationPublisherIds": [
    "String"
  ],
  "clientApplicationsFromVerifiedPublisherOnly": "Boolean",
  "certifiedClientApplicationsOnly": "Boolean"
}
```

