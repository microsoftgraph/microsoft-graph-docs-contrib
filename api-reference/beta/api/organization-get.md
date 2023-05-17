---
title: "Get organization"
description: "Retrieve the properties and relationships of currently authenticated organization."
ms.localizationpriority: medium
author: "adimitui"
ms.prod: "directory-management"
doc_type: apiPageType
---

# Get organization

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of the currently authenticated organization.

Since the **organization** resource supports [extensions](/graph/extensibility-overview), you can also use the `GET` operation to get custom properties and extension data in an **organization** instance.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type | Permissions (from least to most privileged) |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | User.Read, Organization.Read.All, Directory.Read.All, Organization.ReadWrite.All, Directory.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application | Organization.Read.All, Directory.Read.All, Organization.ReadWrite.All, Directory.ReadWrite.All |

The calling user must also be in one of the following [Azure AD roles](/azure/active-directory/roles/permissions-reference):

* Global Administrator
* User Administrator
* User
* Helpdesk Administrator
* Service Support Administrator
* Billing Administrator
* Mailbox Administrator
* Partner Tier1 Support
* Partner Tier2 Support
* Directory Readers
* Directory Writers
* AdHoc License Administrator
* Application Administrator
* Security Reader
* Security Administrator
* Privileged Role Administrator
* Cloud Application Administrator
* Customer LockBox Access Approver
* Dynamics 365 Administrator
* Power BI Administrator
* Azure Information Protection Administrator
* Customer LockBox Access Approver
* Dynamics 365 Administrator
* Power BI Administrator
* Azure Information Protection Administrator
* Desktop Analytics Administrator
* License Administrator
* Microsoft Managed Desktop Administrator
* Authentication Administrator
* Privileged Authentication Administrator
* Teams Communications Administrator
* Teams Communications Support Engineer
* Teams Communications Support Specialist
* Teams Administrator
* Insights Administrator
* Compliance Data Administrator
* Security Operator
* Kaizala Administrator
* Global Reader
* Volume Licensing Business Center User
* Volume Licensing Service Center User
* Modern Commerce User
* Microsoft Store for Business User
* Directory Reviewer
* Guest User
* Restricted Guest User

> **Note**: Applications granted the User.Read permission are able to read only the **id**, **displayName**, and **verifiedDomains** properties of the organization.  All other properties will return with `null` values. To read all properties, use Organization.Read.All.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /organization
```

## Optional query parameters

This method supports only the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers

| Name       | Description|
|:-----------|:----------|
| Authorization  | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of one [organization](../resources/organization.md) object in the response body.

## Example

##### Request

Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_organization_1"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/organization/84841066-274d-4ec0-a5c1-276be684bdd3
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-organization-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-organization-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-organization-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-organization-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-organization-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-organization-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response

Here is an example of the response. 
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organization"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#organization/$entity",
    "id": "84841066-274d-4ec0-a5c1-276be684bdd3",
    "deletedDateTime": null,
    "businessPhones": [
        "425-555-0100"
    ],
    "city": null,
    "country": null,
    "countryLetterCode": "NL",
    "createdDateTime": "2021-08-02T10:30:06Z",
    "defaultUsageLocation": "String",
    "displayName": "Contoso",
    "isMultipleDataLocationsForServicesEnabled": null,
    "marketingNotificationEmails": [],
    "onPremisesLastSyncDateTime": null,
    "onPremisesSyncEnabled": null,
    "partnerTenantType": "ResellerPartnerDelegatedAdmin",
    "postalCode": null,
    "preferredLanguage": "en",
    "securityComplianceNotificationMails": [],
    "securityComplianceNotificationPhones": [],
    "state": null,
    "street": null,
    "technicalNotificationMails": [
        "admin@contoso.com"
    ],
    "tenantType": "AAD",
    "directorySizeQuota": {
        "used": 698,
        "total": 50000
    },
    "assignedPlans": [
        {
            "assignedDateTime": "2022-04-03T02:46:42Z",
            "capabilityStatus": "Deleted",
            "service": "Adallom",
            "servicePlanId": "932ad362-64a8-4783-9106-97849a1a30b9"
        },
        {
            "assignedDateTime": "2022-04-03T02:46:42Z",
            "capabilityStatus": "Deleted",
            "service": "MultiFactorService",
            "servicePlanId": "8a256a2b-b617-496d-b51b-e76466e88db0"
        },
        {
            "assignedDateTime": "2021-08-02T10:36:57Z",
            "capabilityStatus": "Enabled",
            "service": "exchange",
            "servicePlanId": "113feb6c-3fe4-4440-bddc-54d774bf0318"
        },
        {
            "assignedDateTime": "2021-08-02T10:36:02Z",
            "capabilityStatus": "Deleted",
            "service": "SCO",
            "servicePlanId": "882e1d05-acd1-4ccb-8708-6ee03664b117"
        }
    ],
    "privacyProfile": {
        "contactEmail": "",
        "statementUrl": ""
    },
    "provisionedPlans": [
        {
            "capabilityStatus": "Deleted",
            "provisioningStatus": "Success",
            "service": "Adallom"
        },
        {
            "capabilityStatus": "Enabled",
            "provisioningStatus": "Success",
            "service": "exchange"
        }
    ],
    "verifiedDomains": [
        {
            "capabilities": "Email, OfficeCommunicationsOnline",
            "isDefault": true,
            "isInitial": true,
            "name": "Contoso.com",
            "type": "Managed"
        }
    ]
}
```

## See also

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions (preview)](/graph/extensibility-open-users)
<!--
- [Add custom data to groups using schema extensions (preview)](/graph/extensibility-schema-groups)
-->

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get organization",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
