---
title: "Update configurationMonitor"
description: "Update the properties of a configurationMonitor object."
author: "swatyario"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update configurationMonitor

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a configurationMonitor object, including the monitor name, description or/and baseline. Note that while making this patch call, the entire monitor body should be passed.

This API is available in only public cloud.

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
PATCH /admin/configurationManagement/configurationMonitors/{monitorId}
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
|displayName|String| User friendly name given by the user to the monitor. Required.|
|description|String| User friendly description of the monitor given by the user. Optional.|
|tenantId|String| Globally unique identifier / GUID of the tenant for which the monitor is being run. Fetched automatically by the system. |
|status|monitorStatus| Status of the monitor. It can only be active [Default] as of now. In future, the monitor status can be changed to inactive or to inactivatedBySystem|
|monitorRunFrequencyInHours|Int32| Frequency at which the monitor is running [The default frequency, in preview, is 6 hours. In future, the users will get a few more options to choose the frequency at which they want the monitors to run.] [Default]. Regardless of when you create or update a monitor, note that the monitor automatically gets triggered within maximum 6 hours. Currently, the monitors are picked at a fixed frequency and time of 0600 hours, 1200 hours, 1800 hours and 2400 hours [All hours in GMT]. For example: If you create a monitor at 0900 hours, the gets triggered around 1200 hours. If you update a monitor at 1600 hours, the monitor gets triggered around 1800 hours.|
|mode|monitorMode| Monitor mode in which the monitor is running. It can be monitorOnly as of now. [Default]
|createdBy|[identitySet](../resources/identityset.md)| Identifier string of the user who created the monitor. Fetched by the system|
|runningOnBehalfOf|[identitySet](../resources/identityset.md)|On whose behalf the monitor runs.|
|createdDateTime|DateTimeOffset| The date and time when the monitor were created. |
|lastModifiedDateTime|DateTimeOffset| The date and time when the monitor was last modified. If there are no modifications made to the monitor, it is same as createdDateTime. |
|parameters|[openComplexDictionaryType](../resources/opencomplexdictionarytype.md)|Key-Value pairs containing the value of the parameters which might be used in the baseline. Optional.|
|baseline|[configurationBaseline](../resources/configurationBaseline.md)|A complex object containing the details of at least one resource and at least one property associated to the resource that is to be monitored. Required.|

## Response

If successful, this method returns a `200 OK` response code and an updated [configurationMonitor](../resources/configurationmonitor.md) object in the response body.

## Examples

### Request

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
  "displayName": "String",
  "description": "String",
}
```
### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
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

**Example 1** Update the displayName of a configurationMonitor

### Request

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
### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
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

**Example 2** Update the baseline of a configurationMonitor

### Request

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
### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
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
