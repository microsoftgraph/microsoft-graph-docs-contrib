---
title: "Update governanceRelationship"
description: "Update the status property to initiate termination of a governance relationship."
author: "hafowler"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# Update governanceRelationship

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the **status** property of a [governanceRelationship](../resources/tenantgovernanceservices-governancerelationship.md) to initiate the termination process. There are two models for termination:
1) Initiated by the governing tenant: After the governing tenant updates the `status` to `terminationRequestedByGoverningTenant`, the governed tenant may subsequently update the `status` to `terminated`.
1) Directly terminated by the governed tenant: The governed tenant updates the `status` to `terminated` to immediately terminate the relationship.

When the governed tenant updates the `status` to `terminated` in either model, the resources that were provisioned in the governed tenant upon relationship creation are deleted.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "tenantgovernanceservices_governancerelationship_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/tenantgovernanceservices-governancerelationship-update-permissions.md)]

[!INCLUDE [rbac-tenant-governance-relationship-apis-write](../includes/rbac-for-apis/rbac-tenant-governance-relationship-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /directory/tenantGovernance/governanceRelationships/{governanceRelationshipId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|status|microsoft.graph.tenantGovernanceServices.relationshipStatus|The current status of the governance relationship. The possible values are: `active`, `terminated`, `terminationRequestedByGoverningTenant`, `unknownFutureValue`. Required.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.tenantGovernanceServices.governanceRelationship](../resources/tenantgovernanceservices-governancerelationship.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_governancerelationship"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/directory/tenantGovernance/governanceRelationships/aaaaaaaa-0000-1111-2222-bbbbbbbbbbbb
Content-Type: application/json

{
  "status": "terminated"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-governancerelationship-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.tenantGovernanceServices.governanceRelationship"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.governanceRelationship",
  "id": "aaaaaaaa-0000-1111-2222-bbbbbbbbbbbb",
  "status": "terminated",
  "governingTenantId": "aaaabbbb-0000-cccc-1111-dddd2222eeee",
  "governedTenantId": "bbbbcccc-1111-dddd-2222-eeee3333ffff",
  "governingTenantName": "Contoso, Inc",
  "governedTenantName": "Fabrikam",
  "policySnapshot": {
      "policyId": "d3d3d3d3-eeee-ffff-aaaa-b4b4b4b4b4b4",
      "multiTenantApplicationsToProvision": [
      {
          "appId": "66667777-aaaa-8888-bbbb-9999cccc0000",
          "objectId": "cccccccc-2222-3333-4444-dddddddddddd",
          "displayName": "Mega Monitor",
          "requiredResourceAccesses": [
              {
                "resourceAppId": "00000003-0000-0000-c000-000000000000",
                "permissions": [
                {
                  "id": "633e0fce-8c58-4cfb-9495-12bbd5a24f7c",
                  "name": "Policy.Read.ConditionalAccess",
                  "type": "scope"
                },
                {
                  "id": "e1fe6dd8-ba31-4d61-89e7-88639da4683d",
                  "name": "User.Read",
                  "type": "scope"
                }
                ]
              }
          ]
      }
    ],
    "delegatedAdministrationRoleAssignments": [
      {
          "roleTemplates": [
              {
                  "id": "f2ef992c-3afb-46b9-b7cf-a126ee74c451",
                  "name": "Global Reader"
              }
          ],
          "group": {
              "id": "ffffffff-5555-6666-7777-aaaaaaaaaaaa"
          }
      }
    ]
  },
  "createdType": "approvedByAdmin",
  "creationDateTime": "2025-09-11T17:07:41.2019694Z"
}
```

