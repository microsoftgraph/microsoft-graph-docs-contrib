---
title: "Update userExperienceAnalyticsBaseline"
description: "Update the properties of a userExperienceAnalyticsBaseline object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update userExperienceAnalyticsBaseline
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [userExperienceAnalyticsBaseline](../resources/userexperienceanalyticsbaseline.md) object.

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
PATCH /deviceManagement/userExperienceAnalyticsBaselines/{userExperienceAnalyticsBaselineId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [userExperienceAnalyticsBaseline](../resources/userexperienceanalyticsbaseline.md) object.

The following table shows the properties that are required when you update the [userExperienceAnalyticsBaseline](../resources/userexperienceanalyticsbaseline.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|createdDateTime|DateTimeOffset|The date the custom baseline was created.|
|displayName|String|The name of the user experience analytics baseline.|
|isBuiltIn|Boolean|Signifies if the current baseline is the commercial median baseline or a custom baseline.|
|overallScore|Int32|The overall score of the user experience analytics baseline.|



## Response

If successful, this method returns a `200 OK` response code and an updated [userExperienceAnalyticsBaseline](../resources/userexperienceanalyticsbaseline.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_userexperienceanalyticsbaseline"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsBaselines/{userExperienceAnalyticsBaselineId}
Content-Type: application/json
Content-length: 158

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsBaseline",
  "displayName": "String",
  "isBuiltIn": "Boolean",
  "overallScore": "Integer"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsBaseline",
  "id": "d056772d-772d-d056-2d77-56d02d7756d0",
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "isBuiltIn": "Boolean",
  "overallScore": "Integer"
}
```

