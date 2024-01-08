---
title: "Microsoft Graph Data Connect app registration troubleshooting"
description: "Troubleshoot your Microsoft Graph Data Connect App Registration"
author: "hrodrigues"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# Troubleshooting Microsoft Graph Data Connect App Registration

This article provides guidance for common issues in MGDC Azure Portal experience to register a Microsoft Entra app with Microsoft Graph Data Connect.

## Unable to create billing resource - No authorization

In the [MGDC Azure Portal](https://aka.ms/mgdcinazure) experience, while creating or updating a Microsoft Fabric app registration, it will try to create a resource of type _Microsoft.GraphServices_ for billing purposes.

![Screenshot showing an error while creating a billing resource.](images/app-registration-unable-create-resource.png)

If you see the above message, this means you don't have the _Microsoft.GraphServices_ resource provider registered nor permission to register it in the selected subscription. You need to request the subscription administrator to register this resource provider, as shown below. For more information, see [Resource Providers](/azure/azure-resource-manager/management/resource-providers-and-types) and [Azure Metered Services](/graph/metered-api-setup?tabs=azurecloudshell#enable-an-application).

![Screenshot showing the resource provider that should be registered.](images/app-registration-graph-provider.png)

Alternatively, your subscription administrator can create the required provider and resource with the following Azure CLI commands:

Register the resource provider
```
az provider register --namespace 'Microsoft.GraphServices'
```

Create billing resource for app
```
az resource create --resource-group <resource_group_name> --name mgdc-<app_id> --resource-type Microsoft.GraphServices/accounts --properties  "{`"appId`": `"<app_id>`"}" --location Global --subscription <subscription_id>
```

## Unable to create billing resource - Already premium usage

If you see the below error message, this means someone already created a resource of type _Microsoft.GraphServices_ for that app manually, with a different name. In that case, the already existent resource will be used for billing purposes and no action is needed.

![Screenshot showing an error for already existent billing resource.](images/app-registration-already-premium-usage.png)
