---
title: "Add educationGradingScheme"
description: "Add defaultGradingScheme by posting to the defaultGradingScheme collection."
author: "v-rmanda"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Add educationGradingScheme

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add defaultGradingScheme by posting to the defaultGradingScheme collection.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "educationassignmentsettings-put-defaultgradingscheme-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/educationassignmentsettings-post-defaultgradingscheme-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PUT /education/classes/{educationClassId}/assignmentSettings/defaultGradingScheme/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [educationGradingScheme](../resources/educationgradingscheme.md) object.

You can specify the following properties when creating an **educationGradingScheme**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Required.|
|grades|[educationGradingSchemeGrade](../resources/educationgradingschemegrade.md) collection|**TODO: Add Description** Optional.|
|hidePointsDuringGrading|Boolean|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `204 No Content` response code and an [educationGradingScheme](../resources/educationgradingscheme.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "set_defaultGradingScheme_using_put"
}
-->
``` http
PUT https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/defaultGradingScheme/$ref
Content-Type: application/json

{
    "@odata.id": "https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingSchemes/69911dea-bc5c-406a-8743-81d06225a3a1"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationGradingScheme"
}
-->

``` http
HTTP/1.1 204 No Content
```


