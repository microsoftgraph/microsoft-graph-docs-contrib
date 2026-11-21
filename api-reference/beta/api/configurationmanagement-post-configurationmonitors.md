---
title: "Create configurationMonitor"
description: "Create a new configurationMonitor object that runs periodically in the background at a scheduled frequency or applies a desired-state baseline once."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
doc_type: apiPageType
---

# Create configurationMonitor

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [configurationMonitor](../resources/configurationmonitor.md) object that runs periodically in the background at a scheduled frequency to detect configuration drift in `monitorOnly` mode, or applies a desired-state baseline once in `applyOnce` mode.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "configurationmanagement_post_configurationmonitors" } -->
[!INCLUDE [permissions-table](../includes/permissions/configurationmanagement-post-configurationmonitors-permissions.md)]

Creating an `applyOnce` monitor supports delegated permissions only. In addition to the calling app's delegated `ConfigurationMonitoring.ReadWrite.All` permission, the TCM service principal needs delegated permissions for the target workloads, and the signed-in user needs the appropriate resource-management roles. See [Set up permissions for remediation and applyOnce](/graph/utcm-authentication-setup#set-up-permissions-for-remediation-and-applyonce-preview).

For `applyOnce`, the service stores delegated tokens until the background job runs. Microsoft Purview Customer Key can provide additional encryption through a multi-workload data encryption policy. See [Token storage and Customer Key](/graph/utcm-authentication-setup).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/configurationManagement/configurationMonitors
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [configurationMonitor](../resources/configurationmonitor.md) object.

You can specify the following properties when you create a **configurationMonitor**.

|Property|Type|Description|
|:---|:---|:---|
|baseline|[configurationBaseline](../resources/configurationbaseline.md)|The desired-state baseline. Required for an inline-baseline monitor. For a template in the same tenant, supply **template** instead; the service copies the version's baseline.|
|description|String| User-friendly description of the monitor given by the user. Optional.|
|displayName|String| User-friendly name given by the user to the monitor. Required.|
|mode|monitorMode|The monitor mode. The possible values are: `monitorOnly`, `applyOnce`, `unknownFutureValue`. Optional; defaults to `monitorOnly`.|
|parameters|[openComplexDictionaryType](../resources/opencomplexdictionarytype.md)|Key-value pairs that contain the values of parameters which might be used in the baseline. Optional.|
|status|monitorStatus|The status of the monitor. Set to `active` to enable execution. Optional; defaults to `active`.|
|template|[configurationTemplateVersion](../resources/configurationtemplateversion.md)|The template reference, supplied inline with **templateId** and **version**. Optional; use instead of **baseline** for a template in the same tenant. Use `latest` to resolve the highest-numbered version when the monitor is created.|

An active `applyOnce` monitor runs in the background on behalf of the signed-in administrator and then becomes inactive. Its result reports the outcome of the run. Template-linked monitors remain pinned to the resolved version when a newer version is created.

## Response

If successful, this method returns a `201 Created` response code and a [configurationMonitor](../resources/configurationmonitor.md) object in the response body.

## Examples

### Example 1: Create a monitoring-only monitor

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_configurationmonitor_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitors
Content-Type: application/json

{
  "displayName": "Demo Monitor",
  "description": "This is a Demo Monitor",
  "baseline": {
    "displayName": "Demo Baseline",
    "description": "This is a baseline with resources SharedMailbox, AcceptedDomain and MailContact",
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
        },
        "resourceVersion": 0
      },
      {
        "displayName": "Accepted Domain",
        "resourceType": "microsoft.exchange.accepteddomain",
        "properties": {
          "Identity": "contoso.onmicrosoft.com",
          "DomainType": "InternalRelay",
          "Ensure": "Present"
        },
        "resourceVersion": 0
      },
      {
        "displayName": "Mail Contact Resource",
        "resourceType": "microsoft.exchange.mailcontact",
        "properties": {
          "Name": "Chris",
          "DisplayName": "Chris",
          "ExternalEmailAddress": "SMTP:chris@fabrikam.com",
          "Alias": "Chrisa",
          "Ensure": "Present"
        },
        "resourceVersion": 0
      }
    ]
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-configurationmonitor-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-configurationmonitor-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-configurationmonitor-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-configurationmonitor-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-configurationmonitor-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-configurationmonitor-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-configurationmonitor-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.configurationMonitor"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/configurationManagement/configurationMonitors/$entity",
  "id": "f1b46220-74af-4347-9ac7-89fe17d57bd7",
  "displayName": "Monitor for EXO100",
  "description": "This is a Monitor with EXO resources",
  "tenantId": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
  "status": "active",
  "monitorRunFrequencyInHours": 6,
  "mode": "monitorOnly",
  "createdDateTime": "2025-03-24T09:00:44.0028541Z",
  "lastModifiedDateTime": "2025-03-24T09:00:44.0398641Z",
  "createdBy": {
    "user": {
      "id": "ad14b3c8-e4db-4896-a963-3f420272d085",
      "displayName": "MOD Administrator"
    },
    "application": {
      "id": null,
      "displayName": null
    }
  },
  "parameters": {},
  "runningOnBehalfOf": {
    "user": {
      "id": "44444444-5555-6666-7777-888888888888",
      "displayName": "Contoso Administrator"
    }
  },
  "templateOwnerTenantId": null
}
```

### Example 2: Apply a baseline once

The request applies the baseline in a background job using the signed-in administrator's permissions. The monitor becomes inactive after execution. This example requires delegated workload permissions in addition to the Graph API permission.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_applyonce_monitor_request"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitors
Content-Type: application/json

{
  "displayName": "Apply Microsoft Entra security defaults",
  "mode": "applyOnce",
  "status": "active",
  "baseline": {
    "displayName": "Microsoft Entra security defaults baseline",
    "resources": [
      {
        "displayName": "Security defaults",
        "resourceType": "microsoft.entra.securitydefaults",
        "resourceVersion": 0,
        "properties": {
          "IsSingleInstance": "Yes",
          "IsEnabled": true
        }
      }
    ]
  }
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.configurationMonitor",
  "truncated": true
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.configurationMonitor",
  "id": "22222222-3333-4444-5555-666666666666",
  "displayName": "Apply Microsoft Entra security defaults",
  "mode": "applyOnce",
  "status": "active",
  "tenantId": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
  "runningOnBehalfOf": {
    "user": {
      "id": "44444444-5555-6666-7777-888888888888",
      "displayName": "Contoso Administrator"
    }
  },
  "templateOwnerTenantId": null
}
```

### Example 3: Create a monitor from a template

For a template in the same tenant, omit **baseline** and supply the template identifier and version. The service copies the baseline from that version. The monitor remains pinned to this version when a newer version is added.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_template_monitor_request"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitors
Content-Type: application/json

{
  "displayName": "Monitor from Exchange template",
  "template": {
    "templateId": "11111111-2222-3333-4444-555555555555",
    "version": "1"
  }
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.configurationMonitor",
  "truncated": true
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.configurationMonitor",
  "id": "22222222-3333-4444-5555-666666666666",
  "displayName": "Monitor from Exchange template",
  "mode": "monitorOnly",
  "status": "active",
  "tenantId": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
  "templateOwnerTenantId": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"
}
```
