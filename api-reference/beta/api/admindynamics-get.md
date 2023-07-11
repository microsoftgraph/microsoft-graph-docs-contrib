---
title: "Get adminDynamics"
description: "Read the properties and relationships of a Microsoft Graph adminDynamics object."
author: "zadinsmo"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# Get adminDynamics
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [adminDynamics](../resources/admindynamics.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|OrgSettings-DynamicsVoice.Read.All, OrgSettings-DynamicsVoice.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|OrgSettings-DynamicsVoice.Read.All, OrgSettings-DynamicsVoice.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/dynamics
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [adminDynamics](../resources/admindynamics.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_admindynamics"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/dynamics
```


### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.adminDynamics"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.adminDynamics",
    "id": "6099c226-4296-c20b-eb7f-a5f7c648cbed",
    "customerVoice": {
      "@odata.type": "microsoft.graph.customerVoiceSettings",
      "isRestrictedSurveyAccessEnabled": "false",
      "isRecordIdentityByDefaultEnabled": "true",
      "isInOrgFormsPhishingScanEnabled": "true"
    }
  }
}
```

