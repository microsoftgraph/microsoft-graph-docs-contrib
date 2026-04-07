---
title: "Create governancePolicyTemplate"
description: "Create a new governance policy template."
author: "hafowler"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# Create governancePolicyTemplate

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [governancePolicyTemplate](../resources/tenantgovernanceservices-governancepolicytemplate.md) that defines the configuration for establishing governance relationships, including role assignments and applications to provision.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "tenantgovernanceservices_post_governancepolicytemplates" } -->
[!INCLUDE [permissions-table](../includes/permissions/tenantgovernanceservices-post-governancepolicytemplates-permissions.md)]

[!INCLUDE [rbac-tenant-governance-relationship-apis-write](../includes/rbac-for-apis/rbac-tenant-governance-relationship-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /directory/tenantGovernance/governancePolicyTemplates
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.tenantGovernanceServices.governancePolicyTemplate](../resources/tenantgovernanceservices-governancepolicytemplate.md) object.

You can specify the following properties when creating a **governancePolicyTemplate**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the policy template. Required.|
|description|String|A description of the policy template. Required.|
|multiTenantApplicationsToProvision|[microsoft.graph.tenantGovernanceServices.multiTenantApplicationsToProvision](../resources/tenantgovernanceservices-multitenantapplicationstoprovision.md) collection|A collection of multitenant applications to be provisioned in the governed tenant when the governance relationship is established. Required.|
|delegatedAdministrationRoleAssignments|[microsoft.graph.tenantGovernanceServices.delegatedAdministrationRoleAssignment](../resources/tenantgovernanceservices-delegatedadministrationroleassignment.md) collection|A collection of delegated administration role assignments to be applied in the governed tenant when the governance relationship is established. Required.|



## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.tenantGovernanceServices.governancePolicyTemplate](../resources/tenantgovernanceservices-governancepolicytemplate.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_governancepolicytemplate"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/tenantGovernance/governancePolicyTemplates
Content-Type: application/json

{
  "displayName": "Monitor Entra resource configurations",
  "description": "Grants Global reader and provisions a custom multi-tenant application to monitor conditional access policies",
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
  }
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-governancepolicytemplate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.tenantGovernanceServices.governancePolicyTemplate"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.governancePolicyTemplate",
  "id": "aaaaaaaa-0000-1111-2222-bbbbbbbbbbbb",
  "displayName": "Monitor Entra resource configurations",
  "description": "Grants Global reader and provisions a custom multi-tenant application to monitor conditional access policies",
  "createdDateTime": "2026-03-06T22:29:00.2110638Z",
  "lastModifiedDateTime": "2026-03-06T22:29:00.2110638Z",
  "version": "1.0",
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
}
```

