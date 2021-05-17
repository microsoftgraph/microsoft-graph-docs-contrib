---
title: "List serviceHealths"
description: "Get service health overviews of tenant's all services. Returns a list of the serviceHealth objects and their properties."
author: "payiAzure"
localization_priority: Normal
ms.prod: "service communications"
doc_type: apiPageType
---

# List serviceHealths
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get service health overviews of tenant's all services. Returns a list of the [serviceHealth](../resources/servicehealth.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ServiceHealth.Read.All|
|Delegated (personal Microsoft account)|ServiceHealth.Read.All|
|Application|ServiceHealth.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/serviceAnnouncement/healthOverviews
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

If successful, this method returns a `200 OK` response code and a collection of [serviceHealth](../resources/servicehealth.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_servicehealth"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/serviceAnnouncement/healthOverviews
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(m365ServiceHealth.readServices.commercialWebService.models.serviceHealth)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
        "@odata.type": "#m365ServiceHealth.readServices.commercialWebService.models.serviceHealth",
        "service": "Exchange Online",
        "status": "FalsePositive",
        "id": "Exchange"
    },
    {
        "@odata.type": "#m365ServiceHealth.readServices.commercialWebService.models.serviceHealth",
        "service": "Identity Service",
        "status": "ServiceRestored",
        "id": "OrgLiveID"
    },
    {
        "@odata.type": "#m365ServiceHealth.readServices.commercialWebService.models.serviceHealth",
        "service": "Microsoft 365 suite",
        "status": "FalsePositive",
        "id": "OSDPPlatform"
    },
    ...
  ]
}
```

### Request to include issues in serviceHealth object
``` http
GET https://graph.microsoft.com/beta/admin/serviceAnnouncement/healthOverviews?$expand=issues
```

### Response
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#m365ServiceHealth.readServices.commercialWebService.models.serviceHealth",
    "service": "Exchange Online",
    "status": "FalsePositive",
    "id": "Exchange",
    "issues": [
         {
            "startDateTime": "2020-11-04T00:00:00Z",
            "endDateTime": "2020-11-20T17:00:00Z",
            "lastModifiedDateTime": "2020-11-20T17:56:31.39Z",
            "title": "Admins are unable to migrate some user mailboxes from IMAP using the Exchange admin center or PowerShell",
            "id": "EX226574",
            "impactDescription": "Admins attempting to migrate some user mailboxes using the Exchange admin center or PowerShell experienced failures.",
            "classification": "Advisory",
            "origin": "Microsoft",
            "status": "ServiceRestored",
            "service": "Exchange Online",
            "feature": "Tenant Administration (Provisioning, Remote PowerShell)",
            "featureGroup": "Management and Provisioning",
            "isResolved": true,
            "highImpact": null,
            "details": [],
            "posts": [
                {
                  "createdDateTime": "2020-11-12T07:07:38.97Z",
                  "postType": "Regular",
                  "description": {
                      "contentType": "Text",
                      "content": "Title: Exchange Online service has login issue. We'll provide an update within 30 minutes."
                   }
                },
                ...
            ]
         },
         ...
      ]
  }
}
```
