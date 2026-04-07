---
title: "List configurationSnapshots"
description: "Get a list of the configurationBaseline objects that represent configuration snapshots."
author: "swatyario"
ms.date: 03/23/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
doc_type: apiPageType
---

# List configurationSnapshots

Namespace: microsoft.graph

Get a list of [configurationBaseline](../resources/configurationbaseline.md) objects that represent configuration snapshots and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "configurationmanagement-list-configurationsnapshots-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/configurationmanagement-list-configurationsnapshots-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/configurationManagement/configurationSnapshots
```

## Optional query parameters

This method supports the `$select`, `$filter`, `$orderBy`, and `$top` OData query parameters to help customize the response. The default page size is 100 items and the maximum page size is 999 items. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [configurationBaseline](../resources/configurationbaseline.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_configurationsnapshots"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/admin/configurationManagement/configurationSnapshots
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-configurationsnapshots-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.configurationBaseline)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#admin/configurationManagement/configurationSnapshots",
  "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET admin/configurationManagement/configurationSnapshots?$select=description,displayName",
  "value": [
    {
      "id": "5b15be20-897f-4b79-85a6-97871c708f6f",
      "displayName": "Exchange Configuration Baseline",
      "description": "Baseline capturing Exchange shared mailbox and accepted domain settings",
      "parameters": [],
      "resources": [
        {
          "displayName": "TestSharedMailbox Resource",
          "resourceType": "microsoft.exchange.sharedmailbox",
          "properties": {
            "DisplayName": "TestSharedMailbox",
            "Alias": "testSharedMailbox",
            "Identity": "TestSharedMailbox",
            "Ensure": "Present",
            "PrimarySmtpAddress": "testSharedMailbox@contoso.onmicrosoft.com",
            "EmailAddresses": [
              "abc@contoso.onmicrosoft.com"
            ]
          }
        },
        {
          "displayName": "Accepted Domain",
          "resourceType": "microsoft.exchange.accepteddomain",
          "properties": {
            "Identity": "contoso.onmicrosoft.com",
            "DomainType": "InternalRelay",
            "Ensure": "Present"
          }
        }
      ]
    },
    {
      "id": "a8c3f2e1-4b9d-4c7a-9e2f-6d8b5a7c3e1f",
      "displayName": "Entra ID Security Baseline",
      "description": "Baseline for conditional access and authentication policies",
      "parameters": [
        {
          "displayName": "TenantId",
          "description": "Target tenant identifier",
          "parameterType": "string"
        }
      ],
      "resources": [
        {
          "displayName": "Corporate Network Access Policy",
          "resourceType": "microsoft.aad.conditionalaccesspolicy",
          "properties": {
            "DisplayName": "Block access from untrusted locations",
            "State": "Enabled",
            "IncludeLocations": "AllTrusted",
            "ExcludeLocations": [],
            "IncludeUsers": "All",
            "GrantControlsOperator": "OR"
          }
        },
        {
          "displayName": "MFA Registration Policy",
          "resourceType": "microsoft.aad.authenticationmethodspolicy",
          "properties": {
            "PolicyName": "MFARegistrationCampaign",
            "State": "Enabled",
            "IncludeTargets": "All",
            "SnoozeDurationInDays": "14"
          }
        }
      ]
    },
    {
      "id": "c2d5e8f1-9a3b-4e6c-8f2d-1a7b9c4e6f3a",
      "displayName": "Compliance Retention Baseline",
      "description": "Baseline for retention policies and labels",
      "parameters": [],
      "resources": [
        {
          "displayName": "Financial Records Retention",
          "resourceType": "microsoft.compliance.retentionpolicy",
          "properties": {
            "Name": "Finance-7YearRetention",
            "RetentionDuration": "2555",
            "Enabled": "True",
            "Comment": "Regulatory requirement for financial documents"
          }
        },
        {
          "displayName": "Legal Hold Label",
          "resourceType": "microsoft.compliance.retentionlabel",
          "properties": {
            "Name": "LegalHold",
            "RetentionDuration": "Unlimited",
            "RetentionAction": "Keep",
            "Comment": "Applied to items under legal review"
          }
        }
      ]
    }
  ]
}
```

