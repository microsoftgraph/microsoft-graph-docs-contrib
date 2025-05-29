---
title: "Update configurationMonitor"
description: "Update the properties of a configurationMonitor object."
author: "swatyario"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: apiPageType
---

# Update configurationMonitor

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [configurationMonitor](../resources/configurationmonitor.md) object, including the monitor name, description or/and baseline. Note that while making this patch call, the entire monitor body should be passed.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "configurationmonitor-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/configurationmonitor-update-permissions.md)]

## HTTP request

You can update details of any particular monitor by making the following call. Add the monitorId for which you want to update the details.


<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /admin/configurationManagement/configurationMonitors('{monitorId}')
```

**Note**: We don't support PUT method.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that aren't included in the request body maintain their previous values or are recalculated based on changes to other property values. For best performance, don't include existing values that aren't changed.

In the request body, if the admin wants to update the monitorName or description, they can do so by just passing the updated values.

**Note**: The configurationBaseline is a contained entity. In case an admin wants to update configurationBaseline, the admin has to supply the entire monitor body that includes values for all fields [including all relevant fields that can be updated].

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|baseline|[configurationBaseline](../resources/configurationBaseline.md)|A complex object containing the details of at least one resource and at least one property associated to the resource that is to be monitored. Optional.|
|displayName|String| User friendly name given by the user to the monitor. Optional.|
|description|String| User friendly description of the monitor given by the user. Optional.|
|parameters|[openComplexDictionaryType](../resources/opencomplexdictionarytype.md)|Key-Value pairs containing the value of the parameters which might be used in the baseline. Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [configurationMonitor](../resources/configurationmonitor.md) object in the response body.

## Examples

### Example 1: Update the displayName for a configurationMonitor

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_configurationmonitor"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitors/{configurationMonitorId}
Content-Type: application/json

{
  "displayName": "Demo Monitor Name Change"
}
```
#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json
{}
```

### Example 2 Update the baseline of a configurationMonitor

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_configurationmonitor"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitors/{configurationMonitorId}
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
           },
           {
               "displayName": "Mail Contact Resource",
               "resourceType": "microsoft.exchange.mailcontact",
               "properties": {
                   "Name": "Chris",
                   "DisplayName": "Chris",
                   "ExternalEmailAddress": "SMTP:chris@ach.com",
                   "Alias": "Chrisa",
                   "Ensure": "Present"
               }
           }
       ]
   },
   "parameters": {
       "FQDN": "contoso.onmicrosoft.com"
   }
}
```
#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json
{}
```
