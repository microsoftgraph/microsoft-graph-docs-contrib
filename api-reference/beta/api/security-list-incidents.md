---
title: "List incidents"
description: "Get a list of the incident objects and their properties."
ms.date: 09/09/2021
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# List incidents
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [incident](../resources/incident.md) objects and their properties.

The list incidents operation allows you to sort through incidents to create an informed cyber security response. It exposes a collection of incidents that were flagged in your network, within the time range you specified in your environment retention policy. The most recent incidents are displayed at the top of the list.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|SecurityIncident.Read.All, SecurityIncident.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|SecurityIncident.Read.All, SecurityIncident.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/incidents
```

## Optional query parameters
This method supports the following OData query parameters to help customize the response: `$count`, `$filter`, `$skip`, `$top`, `$expand`.

The following properties support `$filter` : **assignedTo**, **classification**, **createdDateTime**, **determination**, **lastUpdateDateTime**, **severity**, and **status**.

Use `@odata.nextLink` for pagination.

The following are examples of their use:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/incidents?$count=true
GET /security/incidents?$filter={property}+eq+'{property-value}'
GET /security/incidents?$top=10
```

For general information, see [OData query parameters](/graph/query-parameters).


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [incident](../resources/incident.md) objects in the response body.

## Examples
### Example 1: List all incidents
### Request
<!-- {
  "blockType": "request",
  "name": "list_incident"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/incidents
```


### Response
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.incident",
  "isCollection": true
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
        "@odata.type": "#microsoft.graph.incident",
        "id": "2972395",
        "incidentWebUrl": "https://security.microsoft.com/incidents/2972395?tid=12f988bf-16f1-11af-11ab-1d7cd011db47",
        "redirectIncidentId": null,
        "aadTenantId": "b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
        "displayName": "Multi-stage incident involving Initial access & Command and control on multiple endpoints reported by multiple sources",
        "createdDateTime": "2021-08-13T08:43:35.5533333Z",
        "lastUpdateDateTime": "2021-09-30T09:35:45.1133333Z",
        "assignedTo": "KaiC@contoso.onmicrosoft.com",
        "classification": "TruePositive",
        "determination": "MultiStagedAttack",
        "status": "Active",
        "severity": "Medium",
        "tags": [
          "Demo"
        ],
        "comments": [
          {
		        "comment": "Demo incident",
		        "createdBy": "DavidS@contoso.onmicrosoft.com",
		        "createdTime": "2021-09-30T12:07:37.2756993Z"
          }
        ]
    }
  ]
}
```

### Example 2: List all incidents with their alerts.
### Request
<!-- {
  "blockType": "request",
  "name": "list_incident"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/incidents?$expand=alerts
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.incident",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
        "@odata.type": "#microsoft.graph.incident",
        "id": "2972395",
        "incidentWebUrl": "https://security.microsoft.com/incidents/2972395?tid=12f988bf-16f1-11af-11ab-1d7cd011db47",
        "redirectIncidentId": null,
        "aadTenantId": "b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
        "displayName": "Multi-stage incident involving Initial access & Command and control on multiple endpoints reported by multiple sources",
        "createdDateTime": "2021-08-13T08:43:35.5533333Z",
        "lastUpdateDateTime": "2021-09-30T09:35:45.1133333Z",
        "assignedTo": "KaiC@contoso.onmicrosoft.com",
        "classification": "truePositive",
        "determination": "multiStagedAttack",
        "status": "active",
        "severity": "medium",
        "tags": [
          "Demo"
        ],
        "comments": [
          {
		        "comment": "Demo incident",
		        "createdBy": "DavidS@contoso.onmicrosoft.com",
		        "createdTime": "2021-09-30T12:07:37.2756993Z"
          }
        ],
        "alerts": [
            {
                "@odata.type": "#microsoft.graph.alert_v2",
                "id": "da637578995287051192_756343937",
                "providerAlertId": null,
                "incidentId": "2972395",
                "status": "new",
                "severity": "medium",
                "classification": "truePositive",
                "determination": "multiStagedAttack",
                "serviceSource": "microsoftDefenderForEndpoint",
                "detectorId": "b6ef6eae-651b-4913-a97f-b491c6685036",
                "aadTenantId": "b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
                "title": "Horizontal port scan initiated from unmanaged  device",
                "description": "Horizontal port scan initiated from unmanaged device",
                "category": "Discovery",
                "assignedTo": "BenA@contoso.onmicrosoft.com",
                "alertWebUrl": "https://security.microsoft.com/alerts/da637578995287051192_756343937?tid=b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
                "incidentWebUrl": "https://security.microsoft.com/incidents/2972395?tid=b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
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
        ]
    }
  ]
}
```