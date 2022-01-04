---
title: "Get alert_v2"
description: "Retrieve the properties and relationships of an alert_v2 object."
ms.date: 09/09/2021
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get alert_v2
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of an [alert_v2](../resources/alert_v2.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|SecurityAlert.Read.All, SecurityAlert.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|SecurityAlert.Read.All, SecurityAlert.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/alerts_v2/{alertId}
```


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [alert_v2](../resources/alert_v2.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_alert_v2"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/alerts_v2/da637578995287051192_756343937
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.alert_v2"
}
-->

``` http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.alert_v2",
    "id": "da637578995287051192_756343937",
    "providerAlertId": null,
    "incidentId": "31000",
    "status": "new",
    "severity": "low",
    "classification": "unknown",
    "determination": "unknown",
    "serviceSource": "microsoftDefenderForEndpoint",
    "detectorId": "b6ef6eae-651b-4913-a97f-b491c6685036",
    "aadTenantId": "b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
    "title": "Horizontal port scan initiated from unmanaged  device",
    "description": "Horizontal port scan initiated from unmanaged device",
    "category": "Discovery",
    "assignedTo": "BenA@contoso.onmicrosoft.com",
    "alertWebUrl": "https://security.microsoft.com/alerts/da637578995287051192_756343937?tid=b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
    "incidentWebUrl": "https://security.microsoft.com/incidents/31000?tid=b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
    "actorDisplayName": null,
    "threatDisplayName": null,
    "threatFamilyName": null,
    "mitreTechniques": [],
    "createdDateTime": "2021-05-29T15:38:48.3050426Z",
    "lastUpdateDateTime": "2021-05-29T15:38:53.3266667Z",
    "resolvedDateTime": null,
    "firstActivityDateTime": "2021-05-22T15:01:15.2504071Z",
    "lastActivityDateTime": "2021-05-22T15:01:47.7620475Z",
    "comments": [
      {
		"comment": "Demo alert",
		"createdBy": "BenA@contoso.onmicrosoft.com",
		"createdTime": "2021-05-30T12:07:37.2756993Z"
      }
    ]
}
```
