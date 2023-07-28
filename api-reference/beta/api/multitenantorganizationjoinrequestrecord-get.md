---
title: "Get multiTenantOrganizationJoinRequestRecord"
description: "Get the status of a tenant joining a multi-tenant organization."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get multiTenantOrganizationJoinRequestRecord
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the status of a tenant joining a multi-tenant organization.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|MultiTenantOrganization.Read.All, MultiTenantOrganization.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|MultiTenantOrganization.Read.All, MultiTenantOrganization.ReadWrite.All|

[!INCLUDE [rbac-multitenantorganization-apis-read](../includes/rbac-for-apis/rbac-multitenantorganization-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/multiTenantOrganization/joinRequest
```

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md) object in the response body.

## Examples

The following example gets the status of a tenant joining a multi-tenant organization.

### Request

<!-- {
  "blockType": "request",
  "name": "get_multitenantorganizationjoinrequestrecord"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/multiTenantOrganization/joinRequest
```


### Response

The following example shows the response before an added tenant joins a multi-tenant organization.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.multiTenantOrganizationJoinRequestRecord"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/multiTenantOrganization/joinRequest/$entity",
    "id": "7149c406-fac5-4be9-ad4b-f46fac7fe60c",
    "addedByTenantId": "00000000-0000-0000-0000-000000000000",
    "memberState": null,
    "role": null,
    "transitionDetails": null
}
```

The following example shows the response after an added tenant [requests to join a multi-tenant organization](multitenantorganizationjoinrequestrecord-update.md) and the state is still `pending`.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/multiTenantOrganization/joinRequest/$entity",
    "id": "3e536776-7489-43e9-9637-742d62ec3fc5",
    "addedByTenantId": "1fd6544e-e994-4de2-9f1b-787b51c7d325",
    "memberState": "pending",
    "role": null,
    "transitionDetails": {
        "desiredMemberState": "active",
        "status": "notStarted",
        "details": ""
    }
}
```

The following example shows the response after an added tenant successfully joins a multi-tenant organization and the state is changed to `active`.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/multiTenantOrganization/joinRequest/$entity",
    "id": "3e536776-7489-43e9-9637-742d62ec3fc5",
    "addedByTenantId": "1fd6544e-e994-4de2-9f1b-787b51c7d325",
    "memberState": "active",
    "role": member,
    "transitionDetails": null
}
```

The following example shows the response when an added tenant fails to join a multi-tenant organization. To reset a failed join request, see [Update multiTenantOrganizationJoinRequestRecord](multitenantorganizationjoinrequestrecord-update.md).

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/multiTenantOrganization/joinRequest/$entity",
    "id": "3e536776-7489-43e9-9637-742d62ec3fc5",
    "addedByTenantId": "1fd6544e-e994-4de2-9f1b-787b51c7d325",
    "memberState": "pending",
    "role": null,
    "transitionDetails": {
        "desiredMemberState": "active",
        "status": "failed",
        "details": "DirectoryService Exception"
    }
}
```