---
title: "Update configurationMonitor"
description: "Update the properties of a configurationMonitor object, including the monitor name, description, and baseline."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
doc_type: apiPageType
---

# Update configurationMonitor

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [configurationMonitor](../resources/configurationmonitor.md), including its name, description, baseline, mode, status, or referenced version of the same template. When updating an inline baseline, provide the full monitor body as described in the request body section.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "configurationmonitor_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/configurationmonitor-update-permissions.md)]

Updating or reactivating an `applyOnce` monitor supports delegated permissions only. The TCM service principal also needs delegated workload permissions, and the signed-in user needs the roles required to modify the target resources. See [Set up permissions for remediation and applyOnce](/graph/utcm-authentication-setup#set-up-permissions-for-remediation-and-applyonce-preview).

For `applyOnce`, the service stores delegated tokens until the background job runs. See the token-storage and Customer Key guidance in [Set up authentication](/graph/utcm-authentication-setup).

## HTTP request

To update the details of any particular monitor:

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /admin/configurationManagement/configurationMonitors/{configurationMonitorId}
```

>**Note:** Replace `configurationMonitorId` with the monitor ID for which you want to update the details.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|baseline|[configurationBaseline](../resources/configurationbaseline.md)|A complex object that contains details of at least one resource and one property associated with the resource to be monitored. Optional.|
|description|String| User-friendly description of the monitor given by the user. Optional.|
|displayName|String| User-friendly name given by the user to the monitor. Optional.|
|mode|monitorMode|The mode of the monitor. The possible values are: `monitorOnly`, `applyOnce`, `unknownFutureValue`. Optional.|
|parameters|[openComplexDictionaryType](../resources/opencomplexdictionarytype.md)|Key-value pairs that contain the values of parameters which might be used in the baseline. Optional.|
|status|monitorStatus|Status of the monitor. The possible values are: `active`, `inactive`, `unknownFutureValue`. Optional.|
|template|[configurationTemplateVersion](../resources/configurationtemplateversion.md)|A reference to a new version of the same template, supplied inline with **templateId** and **version**. Optional. Switching to a different template isn't supported.|

For a template-linked monitor, update the inline **template** reference to use a new version; don't patch its baseline directly. Direct writes to `/configurationMonitors/{configurationMonitorId}/template` aren't supported.

Changing an active `monitorOnly` monitor to `applyOnce` queues a one-time application of the baseline. If the monitor is inactive, also set **status** to `active`. To run an inactive `applyOnce` monitor again, update **status** to `active`. Updating the mode of an already-active `applyOnce` monitor doesn't queue a duplicate execution.

>**Note**: The [configurationBaseline](../resources/configurationbaseline.md) resource is a contained entity. If an admin wants to update the **configurationBaseline**, they must provide the full monitor body, including values for all fields, particularly those that are relevant and can be updated.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Update the displayName of a configurationMonitor

The following example shows how to update the **displayName** property of a **configurationMonitor** object.

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_configurationmonitor_1"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitors/b86049ce-0180-404e-803a-5616d49290d7
Content-Type: application/json

{
  "displayName": "Demo Monitor Name Change"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-configurationmonitor-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-configurationmonitor-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-configurationmonitor-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-configurationmonitor-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-configurationmonitor-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-configurationmonitor-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-configurationmonitor-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 2: Update the baseline of a configurationMonitor

The following example shows how to update the **baseline** property of a **configurationMonitor** object.

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_configurationmonitor_2"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitors/b86049ce-0180-404e-803a-5616d49290d7
Content-Type: application/json

{
  "displayName": "Demo Monitor",
  "description": "This is a Demo Monitor",
  "baseline": {
    "displayName": "Demo Baseline",
    "description": "This is a baseline with SharedMailbox, AcceptedDomain and MailContact",
    "parameters": [
      {
        "displayName": "FQDN",
        "description": "The Fully Qualified Domain Name of the Tenant",
        "parameterType": "String"
      }
    ],
    "resources": [
      {
        "displayName": "TestSharedMailbox Resource",
        "resourceType": "microsoft.exchange.sharedmailbox",
        "properties": {
          "DisplayName": "TestSharedMailbox",
          "Identity": "TestSharedMailbox",
          "Ensure": "Present",
          "PrimarySmtpAddress": "[concat('testSharedMailbox', parameters('FQDN'))]",
          "EmailAddresses": [
            "abc@contoso.onmicrosoft.com",
            "[concat('testSharedMailbox@', parameters('FQDN'))]"
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
  },
  "parameters": {
    "FQDN": "contoso.onmicrosoft.com"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-configurationmonitor-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-configurationmonitor-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-configurationmonitor-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-configurationmonitor-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-configurationmonitor-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-configurationmonitor-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-configurationmonitor-2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 3: Change an inactive monitor to applyOnce

Set both **mode** and **status** so that an inactive monitor applies its baseline. Changing only **mode** on an inactive monitor doesn't trigger execution.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_monitor_applyonce_request"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitors/22222222-3333-4444-5555-666666666666
Content-Type: application/json

{
  "mode": "applyOnce",
  "status": "active"
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 4: Run an inactive applyOnce monitor again

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "rerun_applyonce_monitor_request"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitors/22222222-3333-4444-5555-666666666666
Content-Type: application/json

{
  "status": "active"
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 5: Use a new version of the same template

Supply the new inline **template** reference on the monitor. Don't send a PATCH request to its `/template` navigation endpoint.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_monitor_template_version_request"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitors/22222222-3333-4444-5555-666666666666
Content-Type: application/json

{
  "template": {
    "templateId": "11111111-2222-3333-4444-555555555555",
    "version": "2"
  }
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 204 No Content
```
