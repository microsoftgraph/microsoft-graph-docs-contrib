---
title: "Update educationAssignmentSettings"
description: "Update the properties of an educationAssignmentSettings object. Only Teachers can update these settings"
author: "dipakboyed"
localization_priority: Normal
ms.prod: "education"
doc_type: apiPageType
---

# Update educationAssignmentSettings
Namespace: microsoft.graph

Update the properties of an [educationAssignmentSettings](../resources/educationassignmentsettings.md) object. Only Teachers can update these settings.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EduAssignments.ReadWriteBasic, EduAssignments.ReadWrite|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /education/classes/{id}/assignmentSettings
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [educationAssignmentSettings](../resources/educationassignmentsettings.md) object.

The following table shows the properties that are required when you update the [educationAssignmentSettings](../resources/educationassignmentsettings.md).

|Property|Type|Description|
|:---|:---|:---|
|submissionAnimationDisabled|Boolean|setting - When true turn-in animation celebration will not be shown. Default value - false|



## Response

If successful, this method returns a `200 OK` response code and an updated [educationAssignmentSettings](../resources/educationassignmentsettings.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_educationassignmentsettings"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/educationClass/assignmentSettings
Content-Type: application/json
Content-length: 114

{
  "@odata.type": "#microsoft.graph.educationAssignmentSettings",
  "submissionAnimationDisabled": "Boolean"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.educationAssignmentSettings",
  "submissionAnimationDisabled": "Boolean"
}
```

