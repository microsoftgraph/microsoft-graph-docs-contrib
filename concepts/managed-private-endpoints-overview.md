---
title: "Overview of managed private endpoints in Microsoft Graph Data Connect"
description: "Learn how to enable Azure V-net IR to manage private endpoints in Microsoft Graph Data Connect."
author: "michaelvenables"
ms.localizationpriority: high
ms.prod: "data-connect"
ms.custom: scenarios:getting-started
---

# Overview of managed private endpoints in Microsoft Graph Data Connect

The following steps outline how to enable Azure V-net Integration Runtime (IR) to manage private endpoints in Microsoft Graph Data Connect (Data Connect). We recommend customers use Azure Synapse workspaces to enable Azure V-net IR in mapping data flow. Azure Data Factory (Data Factory) is compatible with Azure V-net IR. With Azure V-Net IR, customers no longer need to add public IP addresses to an allow list, and customers can close their destination storage accounts to the public network and instead set up their data extraction over a private virtual network. This helps to ensure that data extraction from Data Connect to the customer's storage account is more secure.

> [!NOTE]
> Managed private endpoints are only supported with Azure V-Net IR. Existing Azure Synapse or Azure Data Factory (ADF) flows with copy activity and Azure public IR require that you add IP addresses to an allow list.

## Enabling Azure V-net IR for Azure Synapse

Use the following steps to enable Azure V-net Integration Runtime (IR) to manage private endpoints in Data Connect:

Step 1. Ensure that you've created a Synapse workspace, then sign in to the Azure portal to configure an existing storage as part of the process.

![Screenshot with the Basics tab highlighted, showing the first step to create a Synapse workspace.](images/create-synapse-workspace.png)

Step 2. On the **Networking** tab, next to **Managed virtual network**, select **Enable**.

![Screenshot with the Networking tab highlighted and Managed virtual network option enabled, showing the second step to create a Synapse workspace.](images/create-synapse-workspace-networking.png)

Step 3. Open the Synapse workspace. Go to **Manage** > **Managed private endpoints** and do one of the following:

- If you've added a storage option as part of the Synapse workspace creation, the managed private endpoint connection to storage is already created and in a **Pending** approval state.

![Screenshot showing a successfully created, managed private endpoint, with approval state pending.](images/managed-private-endpoint-created-pending-approval-state.png)

- If you are using existing storage, create a managed private endpoint. Select **New**, choose the storage type, then select **Continue**.

![Screenshot showing the option to create a managed private endpoint with an existing storage option.](images/create-managed-private-endpoint-existing-storage.png)

- Provide the connection name and description, specify the storage account, then select **Create**:

![Screenshot showing how to create and name a new managed private endpoint.](images/create-new-managed-private-endpoint.png)

- Note that the initial state will be provisioning of a private IP address from within the Managed Virtual Network.

![Screenshot showing the provisioning state of a new managed private endpoint.](images/managed-private-endpoint-provisioning-state.png)

- After the endpoint is successfully provisioned, the approval state is **Pending**. Continue to Step 4 using the created name—rather than the name previously automatically generated in step 3.

![Screenshot showing the provisioning state of a new managed private endpoint.](images/managed-private-endpoint-approval-state-pending.png)

Step 4. Approve the managed private endpoint from the storage account.

- Go to **Storage account** > **Networking** > **Private endpoint connections** to view the private endpoint request in a pending state.

![Screenshot showing a new private endpoint request in a pending state.](images/private-endpoint-request-pending-state.png)

- Select the connection, then select **Approve**:

![Screenshot showing a new private endpoint with Approval button highlighted, ready to be approved.](images/private-endpoint-connection-approval-step.png)

- Provide a description when prompted—and verify that the connection state has changed to **Approved**:

![Screenshot showing a private endpoint with Approved state highlighted.](images/private-endpoint-connection-approved-status.png)

Step 5. In the storage account **Networking blade**, go to **Firewalls and virtual networks**. Under **Public network access**, select **Enabled from selected virtual networks and IP addresses** and configure the network firewall according to your preference. Uncheck **Allow Azure services on the trusted services list to access this storage account**.

![Screenshot showing the Firewalls and virtual networks tab highlighted, and configuration settings for public network access, firewall, and network rule exceptions.](images/firewalls-and-virtual-networks-configuration-settings.png)

Step 6. Return to the previous Synapse workspace and wait for the managed private endpoint to switch to **Approved**:

![Screenshot with the approved state of a managed private endpoint in a Synapse workspace, highlighted.](images/synapse-workspace-private-endpoint-approved-state.png)

The managed private endpoint shows as successfully created to the desired storage account from Synapse Analytics.

Step 7. Verify that the available integration runtime is configured to **Managed Virtual Network** (configured by default).

![Screenshot with the Managed Virtual Network highlighted, successfully configured to available integration runtime.](images/integration-runtime-configured-managed-virtual-network.png)
