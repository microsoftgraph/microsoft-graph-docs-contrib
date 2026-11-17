---
title: "Supported Agent resources for Tenant Configuration Management (preview)"
description: "Learn about the supported Agent resource types, properties, and permissions for monitoring and snapshots in Tenant Configuration Management."
author: "Anusree-stack"
ms.date: 11/05/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
---

# Supported Agent resources for Tenant Configuration Management (preview)

This article lists the Agent resource types supported in preview for monitoring and snapshots through the Tenant Configuration Management (TCM) APIs in Microsoft Graph beta. These resources also support [remediation and applyOnce](utcm-remediation-applyonce-resources.md#microsoft-agent-resources).

All resources on this page use `resourceVersion: 1` and are singletons. They don't have a key property because each tenant has only one instance of each setting. Use the nested `valueObject` properties documented for each resource when creating a baseline.

## Permissions

For monitoring and snapshots, grant the TCM service principal the `CopilotPolicySettings.Read` **application** permission on Microsoft Graph. For remediation and `applyOnce`, grant it the `CopilotPolicySettings.ReadWrite` **delegated** permission. **AI Administrator** is the least-privileged role for the signed-in user for remediation and `applyOnce`; don't assign that user-role requirement to the service principal.

These workload permissions are separate from the permissions required by the app that calls the TCM APIs. See [Set up authentication](utcm-authentication-setup.md).

The [Copilot group-level policy restriction](utcm-copilot-resources.md#prerequisites-and-permissions) doesn't apply to the Agent resources on this page.

## allowedagenttypes resource type

[!INCLUDE [microsoft-agent-allowedagenttypes](includes/utcm/agent/microsoft-agent-allowedagenttypes.md)]

## sharing resource type

[!INCLUDE [microsoft-agent-sharing](includes/utcm/agent/microsoft-agent-sharing.md)]

## useraccess resource type

[!INCLUDE [microsoft-agent-useraccess](includes/utcm/agent/microsoft-agent-useraccess.md)]
