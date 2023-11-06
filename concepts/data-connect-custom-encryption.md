---
title: "Use encryption with Microsoft Graph Data Connect"
description: "Learn how to enable custom dataset enryption with Microsoft Graph Data Connect"
author: "rimisra2"
ms.localizationpriority: high
ms.prod: "data-connect"
---

# Encryption with Microsoft Graph Data Connect

Microsoft Graph Data Connect (Data Connect) offers encryption capabilities through encryption-at-rest and encryption-in-transit. With [Azure Key Vault (AKV)](https://learn.microsoft.com/en-us/azure/key-vault/general/basic-concepts), customers can generate and store their public and private keys in AKV and refresh them when needed. Additionally, we offer out-of-the-box custom encrypted datasets as well. This article focuses on how to enable custom encryption for datasets within Data Connect 
    1. **Encryption for data-at-rest**: We recommend customers leverage (Azure’s data-at-rest)[https://learn.microsoft.com/en-us/azure/security/fundamentals/encryption-atrest] encryption feature and customer managed keys when setting up their destination Azure storage account. This helps ensure the customer’s destination storage account is properly locked and secure after data delivery. 
    2. **Encryption for data-in-transit**: Data Connect offers encryption for data-in-transit through our custom dataset encryption capability and ensuring ALL data requests between a customer’s Microsoft 365 and Azure resources are secure using service standards such as HTTPS that are (SOC approved.)[https://docs.microsoft.com/en-us/compliance/regulatory/offering-soc-2] 

# Enabling Custom Encryption with Microsoft Graph Data Connect

This article guides you through setting up custom encryption for secure data delivery with Data Connect.
Customers can use custom encryption for secure dataset delivery. Link your Azure Key Vault (AKV) during application registration to enable encryption. Data Connect encrypts datasets using authorized public keys and delivers them encrypted with a decryption key.

Set up custom encryption by generating keys in AKV or linking an existing AKV. Enable encryption when setting up a new Data Connect application or edit an existing one.

## Enabling Encryption for your Data Connect Application.

If you have an existing AKV with the correct set up, you can enable encryption during data connect app registration in one flow. [Check the below section on AKV](./data-connect-custom-encryption.md#using-azure-key-vault-for-custom-encryption) to ensure you have correctly set up you AKV for custom encryption during app registration.

As a pre-requisite, we recommend setting up your application from the instructions from our (Getting Started)[../includes/data-connect-quickstart-01.md] and using [our simplified onboarding experience.](./onboarding-experience-overview.md) This is immensely crucial if you already do not have a AKV already set up.

> [!NOTE]
> Custom Encryption is not available to customers who are still using the PAM consent process. 

The next steps go over how to enable encryption for your existing Data Connect Application and [connect it with your AKV](./data-connect-custom-encryption.md#using-azure-key-vault-for-custom-encryption).

No action is required from the Microsoft 365 admin for this section.

## Using Azure Key Vault for Custom Encryption

If you have not yet created an AKV, please follow the steps in "Setting up Azure Key Vault" tab as prerequisties before moving onto the next tab. 

Once you have created your AKV or have an existing one, hover over "Using your existing Azure Key Vault" tab and enable the correct role permissions required. Finally, hover to the "Generating RSA keys with your Azure Key Vault" tab to create the RSA keys within your AKV required for custom encryption.

No action is required from the Microsoft 365 admin for this section.

# [Setting up Azure Key Vault](#tab/SettingUpAKV)

1. Log into your (Azure portal)[www.portal.azure.com] with your developer credentiials and click on the **Azure Key Vault** icon
    ![Screenshot of the the Azure portal with Azure Key Vault boxed in](images/azure-portal-akv.png)

2. If you do not have an existing AKV, hover over to **Create**. Follow the steps to [create a new instance of AKV.](https://learn.microsoft.com/en-us/azure/key-vault/general/quick-create-portal) 
    ![Screenshot of how to create Azure Key Vault](images/create-akv.png)

3. Please ensure that you enable "Azure role-based access control (recommended)" underneath **Permission model** for the later steps to apply. 
    ![Screenshot explain permission models during AKV registration](images/akv-permission-model.png)

4. Please ensuring you have enabled public access to allow Data Connect to access any public keys generated and stored. Data Connect is authorized only to access select public keys. 
    ![Screenshot explain permission models during AKV registration](images/akv-networking.png)

5. Follow through the steps and select **Review + Create** when done.

# [Using your existing Azure Key Vault](#tab/ExistingAKV)

1. Log into your (Azure portal)[www.portal.azure.com] with your developer credentiials and click on the **Azure Key Vault** icon
    ![Screenshot of the the Azure portal with Azure Key Vault boxed in](images/azure-portal-akv.png)

2. Click on your Azure Key Vault. In this example we will use, **LoBEncryption Demo**.
    ![Screenshot of the AKVs listed on the home page](images/akv-main-page.png)

3. Hover over **Access Control (IAM)** and click on **Add**.
    ![Screenshot of access control and how to add roles based permission](images/akv-access-control.png)

4. Please ensure you have clicked on **Add role assignment** within **Add**.
    ![Screenshot of access control and adding role assignments](images/akv-add-role-assignment.png)

5. Once you are on the Role Assignment page, within **Role**, type in "Key Vault Crypto User" and click on it. Click **Next** when done.
    ![Screenshot shows key vault crypto user on the role assignment page](images/akv-crypto-user.png)

6. Move onto the **Members** tab and enable **Assign Access to** "Users, group, and service principal" and the click on "+ Select Members". A window pane on the left should pop up, select the correct service principal (Data Connect application name). This step ensures that your Data Connect application has access to connect to Azure Key Vault. Click **Next** when done.
    ![Screenshot shows how to give access to the correct service principal](images/akv-select-service-principal.png)

7. Ensure you have reviewed the details within the **Review + assign** and click on **Review + Assign** on the right-below corner. Your Azure Key Vault is set up to be connected to within your Data Connect Application

# [Generating RSA keys with your Azure Key Vault](#tab/AKVKeys)

1. Hover over to the main Key Vaults page and click on your Azure Key Vault that you set up from the previous steps. In this example we will use, **LoBEncryption Demo**.
    ![Screenshot of the AKVs listed on the home page](images/akv-main-page.png)

2. Select **Keys** within the left window pane of your AKV.
    ![Screenshot of left window pane including Keys](images/akv-keys.png)

3. Click on **Generate/Import**
    ![Screenshot to generate or import your keys](images/akv-generate-keys.png)

4. Generate a RSA key and name your key to be your Azure Active Directory (AAD) tenant ID. Ensure it is uniquely named (there should only be one key per respective AAD tenant ID).
    ![Screenshot going over the specific on how to generate a RSA Key](images/akv-generate-RSA-key.png)

    > [!NOTE]
    > The RSA key must be set to 2048 bits for key size and have a listed expiration date or else it will not be valid. 

5. Click on **Create** when you are done filling out the details!
