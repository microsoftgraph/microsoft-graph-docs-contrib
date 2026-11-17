---
title: "Supported Copilot resources for Tenant Configuration Management (preview)"
description: "Learn about the supported Copilot resource types, properties, and permissions for monitoring and snapshots in Tenant Configuration Management."
author: "Anusree-stack"
ms.date: 11/05/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
---

# Supported Copilot resources for Tenant Configuration Management (preview)

This article lists the Copilot resource types supported in preview for monitoring and snapshots through the Tenant Configuration Management (TCM) APIs in Microsoft Graph beta. These resources also support [remediation and applyOnce](utcm-remediation-applyonce-resources.md#microsoft-copilot-resources).

All resources on this page use `resourceVersion: 1` and are singletons. They don't have a key property because each tenant has only one instance of each setting. Use the property names, data types, and allowed values documented for each resource when creating a baseline. The `value` property is a string, not a Boolean or a number. Its meaning varies by setting.

## Prerequisites and permissions

[!INCLUDE [copilot-policy-restriction](includes/utcm/copilot-policy-restriction.md)]

For monitoring and snapshots, grant the TCM service principal the `CopilotPolicySettings.Read` **application** permission on Microsoft Graph. For remediation and `applyOnce`, grant it the `CopilotPolicySettings.ReadWrite` **delegated** permission. **AI Administrator** is the least-privileged role for the signed-in user for remediation and `applyOnce`; don't assign that user-role requirement to the service principal.

These workload permissions are separate from the permissions required by the app that calls the TCM APIs. See [Set up authentication](utcm-authentication-setup.md).

## allowconnectedofficeexperiences resource type

[!INCLUDE [microsoft-copilot-allowconnectedofficeexperiences](includes/utcm/copilot/microsoft-copilot-allowconnectedofficeexperiences.md)]

## allowfeedback resource type

[!INCLUDE [microsoft-copilot-allowfeedback](includes/utcm/copilot/microsoft-copilot-allowfeedback.md)]

## allowfileupload resource type

[!INCLUDE [microsoft-copilot-allowfileupload](includes/utcm/copilot/microsoft-copilot-allowfileupload.md)]

## allowinadmincenters resource type

[!INCLUDE [microsoft-copilot-allowinadmincenters](includes/utcm/copilot/microsoft-copilot-allowinadmincenters.md)]

## allowlogsinfeedback resource type

[!INCLUDE [microsoft-copilot-allowlogsinfeedback](includes/utcm/copilot/microsoft-copilot-allowlogsinfeedback.md)]

## allowofficeexperiencesanalyzingcontent resource type

[!INCLUDE [microsoft-copilot-allowofficeexperiencesanalyzingcontent](includes/utcm/copilot/microsoft-copilot-allowofficeexperiencesanalyzingcontent.md)]

## allowoptionalconnectedexperiences resource type

[!INCLUDE [microsoft-copilot-allowoptionalconnectedexperiences](includes/utcm/copilot/microsoft-copilot-allowoptionalconnectedexperiences.md)]

## allowwebsearch resource type

[!INCLUDE [microsoft-copilot-allowwebsearch](includes/utcm/copilot/microsoft-copilot-allowwebsearch.md)]

## blockaccesstocamerasharing resource type

[!INCLUDE [microsoft-copilot-blockaccesstocamerasharing](includes/utcm/copilot/microsoft-copilot-blockaccesstocamerasharing.md)]

## blockaccesstoopenfiles resource type

[!INCLUDE [microsoft-copilot-blockaccesstoopenfiles](includes/utcm/copilot/microsoft-copilot-blockaccesstoopenfiles.md)]

## blockaccesstoscreensharing resource type

[!INCLUDE [microsoft-copilot-blockaccesstoscreensharing](includes/utcm/copilot/microsoft-copilot-blockaccesstoscreensharing.md)]

## copilotchatpinning resource type

[!INCLUDE [microsoft-copilot-copilotchatpinning](includes/utcm/copilot/microsoft-copilot-copilotchatpinning.md)]

## copilotchatsidepane resource type

[!INCLUDE [microsoft-copilot-copilotchatsidepane](includes/utcm/copilot/microsoft-copilot-copilotchatsidepane.md)]

## copilotpagesnotebooks resource type

[!INCLUDE [microsoft-copilot-copilotpagesnotebooks](includes/utcm/copilot/microsoft-copilot-copilotpagesnotebooks.md)]

## frontier resource type

[!INCLUDE [microsoft-copilot-frontier](includes/utcm/copilot/microsoft-copilot-frontier.md)]

## harmfulcontentprotections resource type

[!INCLUDE [microsoft-copilot-harmfulcontentprotections](includes/utcm/copilot/microsoft-copilot-harmfulcontentprotections.md)]

## imagegeneration resource type

[!INCLUDE [microsoft-copilot-imagegeneration](includes/utcm/copilot/microsoft-copilot-imagegeneration.md)]

## multipleaccountaccess resource type

[!INCLUDE [microsoft-copilot-multipleaccountaccess](includes/utcm/copilot/microsoft-copilot-multipleaccountaccess.md)]

## powerpointdesigner resource type

[!INCLUDE [microsoft-copilot-powerpointdesigner](includes/utcm/copilot/microsoft-copilot-powerpointdesigner.md)]

## videogeneration resource type

[!INCLUDE [microsoft-copilot-videogeneration](includes/utcm/copilot/microsoft-copilot-videogeneration.md)]
