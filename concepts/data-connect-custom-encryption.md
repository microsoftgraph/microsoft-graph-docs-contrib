---
title: "Use encryption with Microsoft Graph Data Connect"
description: "Learn how to enable custom dataset encryption with Microsoft Graph Data Connect"
author: "rimisra2"
ms.localizationpriority: high
ms.prod: "data-connect"
---

# Encryption with Microsoft Graph Data Connect

Microsoft Graph Data Connect (Data Connect) offers encryption capabilities through encryption-at-rest and encryption-in-transit. With [Azure Key Vault (AKV)](https://learn.microsoft.com/en-us/azure/key-vault/general/basic-concepts), customers can generate and store their public and private keys in AKV and refresh them when needed. Additionally, we offer out-of-the-box custom encrypted datasets as well. This article focuses on how to enable custom encryption for datasets within Data Connect 

1. **Encryption for data-at-rest**: We recommend customers use the [Azure data-at-rest](https://learn.microsoft.com/en-us/azure/security/fundamentals/encryption-atrest) encryption feature and customer managed keys when setting up their Azure storage account to ensure it's properly locked and secure after data delivery. 

2. **Encryption for data-in-transit**: Data Connect offers encryption for data-in-transit through our custom dataset encryption capability. It also ensures ALL data requests between a customer’s Microsoft 365 and Azure resources are secure using service standards such as HTTPS that are [SOC approved.](https://docs.microsoft.com/en-us/compliance/regulatory/offering-soc-2)

# Enabling Custom Encryption with Microsoft Graph Data Connect

This article guides you through setting up custom encryption for secure data delivery with Data Connect.
Customers can use custom encryption for secure dataset delivery. Link your Azure Key Vault (AKV) during application registration to enable encryption. Data Connect encrypts datasets using authorized public keys and delivers them encrypted with a decryption key.

Set up custom encryption by generating keys in AKV or linking an existing AKV. Enable encryption when setting up a new Data Connect application or edit an existing one.

> [!NOTE]
> Custom Encryption is not available to customers who are still using the PAM consent process or using MDF (Managed Data Flows).

## Enabling Encryption for your Data Connect Application.

1. For existing applications: log into your [Azure Portal](www.azure.portal.com). 
    1. Click on **Microsoft Graph Data Connect** and select your current application. 
    2. Click **properties**. Click on **Single Tenant** and toggle on encryption. 
    3. Drop down to select your Azure Key Vault URI (name of the AKV) or follow steps 3.4 and 3.5 to create a new AKV. Then **Update Properties** to save. 
    4. Follow step 5 to ensure you AKV has the correct role permissions and populate it with the correct RSA keys.

    ![Screenshot covers MGDC on app portal](images/portal-MGDC.png)
    
    ![Screenshot covers the existing app and how to enable encryption](images/existing-app-encryption.md)

    5. Ensure your pipelines run AFTER step 4 is complete or else your data request will not deliver encrypted data.

2. If you don't have an existing Data Connect Application, follow our [Getting Started](../includes/data-connect-quickstart-01.md) using [the simplified onboarding experience.](./onboarding-experience-overview.md). 

3. Fill out the application details on the **Registration Info** page.
    1. Under **Publish Type** select **Single Tenant** if you intend to enable encryption as on. 
    2. Next, **Enable encryption for datasets**.
    > [!NOTE]
    > Encryption will apply to ALL the eligible datasets requested in the application. Click on the tool tip next to encryption to learn which datasets are elgible.
    3. For **Key Vault**, drop down and select the AKV URI (name of the AKV).
    4. If your AKV doesn't exist, open a new tab and follow the steps in ["Setting up your Azure Key Vault" tab.](./data-connect-custom-encryption.md#using-azure-key-vault-for-custom-encryption). 
    5. Once you have set up your AKV, go back to your Data connect application tab and look for your AKV in the drop-down to select it. You may need to refresh the page for the AKV to populate in the dropdown.

    ![Screenshot of the the Azure portal with Azure Key Vault and encryption boxed in](images/app-registration-encryption.png) 

4. Fill out the rest of the required application details as mentioned in the [Getting Started](../includes/data-connect-quickstart-01.md) and [simplified onboarding experience.](./onboarding-experience-overview.md) and submit it for your M365 admin to review. 
    
    > [!NOTE]
    > Make sure to create or note down your existing service principal (SPN) on notepad, you will need this at a later step!


5. Once your M365 Admin has reviewed and approved your app, please follow the steps in ["Using your Azure Key Vault" and "Generating RSA keys with your Azure Key Vault" tab](./data-connect-custom-encryption.md#using-azure-key-vault-for-custom-encryption) to ensure your AKV has the correct role permissions and is populated with RSA keys.

6. Continue to set up your pipeline for data extraction and submit your data request. Encryption will be applied to all the eligible datasets in the application. If you run a pipeline without completing step 5, your requested data will not be encrypted.


## Using Azure Key Vault for Custom Encryption

Follow the steps in "Setting up Azure Key Vault" tab as prerequisite before moving onto the next tab if you don't have an AKV set up.

Once you have an existing AKV, hover over "Using your existing Azure Key Vault" tab and enable the correct role permissions required. Finally, click "Generating RSA keys with your Azure Key Vault" tab to create the required RSA keys in your AKV for custom encryption.

No action is required from the Microsoft 365 admin for this section.

# [Setting up your Azure Key Vault](#tab/SettingUpAKV)

1. Log into your [Azure portal](https://ms.portal.azure.com) with your developer credentials and click on the **Azure Key Vault** icon
    ![Screenshot of the the Azure portal with Azure Key Vault boxed in](images/azure-portal-akv.png)

2. If you don't have an existing AKV, hover over to **Create**. Learn more about how to [create a new instance of AKV.](https://learn.microsoft.com/en-us/azure/key-vault/general/quick-create-portal) 
    ![Screenshot of how to create Azure Key Vault](images/create-akv.png)

3. Click **Azure role-based access control (recommended)** underneath **Permission model** for the later steps to apply. 
    ![Screenshot explains permission models during AKV registration](images/akv-permission-model.png)

4. **Enable public access** in the **Networking** tab to allow Data Connect to access any public keys generated and stored. Data Connect is authorized only to access select public keys. 
    ![Screenshot explains networking for Azure Key Vault](images/akv-networking.png)

5. Follow through the steps and select **Review + Create** when done.

# [Using your Azure Key Vault](#tab/ExistingAKV)

1. Log into your [Azure portal](https://ms.portal.azure.com) with your developer credentials and click on the **Azure Key Vault** icon
    ![Screenshot of the the Azure portal with Azure Key Vault boxed in](images/azure-portal-akv.png)

2. Click on your Azure Key Vault. In this example, we use **LoBEncryption Demo**.
    ![Screenshot of the AKVs listed on the home page](images/akv-main-page.png)

3. Hover over **Access Control (IAM)** and click on **Add**.
    ![Screenshot of access control and how to add roles based permission](images/akv-access-control.png)

4. Click **Add role assignment** within **Add**.
    ![Screenshot of access control and adding role assignments](images/akv-add-role-assignment.png)

5. Once you are on the Role Assignment page, within **Role**, type in "Key Vault Crypto User" and select it. Click **Next** when done.
    ![Screenshot shows key vault crypto user on the role assignment page](images/akv-crypto-user.png)

6. Move onto the **Members** tab and enable "Assign Access to" **Users, group, and service principal** and click on **+ Select Members**. 

7. Select the correct service principal (existing Data Connect application name) through the window pane on the left. This step ensures that your Data Connect application can connect to your Azure Key Vault. Click **Next** when done.
    ![Screenshot shows how to give access to the correct service principal](images/akv-select-service-principal.png)

7. Review the details within the **Review + assign** tab and click on **Review + Assign** on the lower right corner. Your Azure Key Vault can now connect to your Data Connect Application.

# [Generating RSA keys with your Azure Key Vault](#tab/AKVKeys)

1. Hover over to the main Key Vaults page and click on your Azure Key Vault set up from the previous steps. In this example, we use **LoBEncryption Demo**.
    ![Screenshot of the AKVs listed on the home page](images/akv-main-page.png)

2. Select **Keys** within the left window pane of your AKV.

    ![Screenshot of left window pane including Keys](images/akv-keys.png)

3. Click on **Generate/Import**
    ![Screenshot to generate or import your keys](images/akv-generate-keys.png)

4. Generate a RSA key and name your key to be your Azure Active Directory (AAD) tenant ID. Ensure it has a unique name (there should only be one key per respective AAD tenant ID).
    ![Screenshot going over the specific on how to generate a RSA Key](images/akv-generate-RSA-key.png)

    > [!NOTE]
    > The RSA key must be set to 2048 bits for key size and have a listed expiration date or else it will not be valid. 

5. Click on **Create** when you're done filling out the details!

## Admin Guidance on Approval 

1. Log into the [Microsoft 365 admin authorization portal](https://admin.microsoft.com/Adminportal/Home#/Settings/MGDCAdminCenter) with your admin credentials.

2. Choose the **Security & Privacy** tab in **Org settings**, and then select **Microsoft Graph Data Connect applications**, as shown in the following image.
    ![Screenshot with Org settings, the Security & Privacy tab, and Microsoft Graph Data Connect apps highlighted.](images/org-settings-security-and-privacy-data-connect-apps.png)

3.	Please select the application ready for review. Within the **overview** section of the application details, ensure that encryption is enabled. 
    ![Screenshot explains dataset encryption enabled in overview](images/admin-encryption-enabled.png)


4.	Within the **review** section of the application details, ensure encryption is enabled and the datasets requested. 
    > [NOTE]
    > If encryption is enabled during app registration, it will apply to ALL the eligible datasets in the app.

    ![Screenshot explains dataset encryption enabled in overview](images/admin-approves-encryption.png)

5.	Once you have reviewed the application, please select **Approve, Decline, or Cancel**. An action must be taken and Data Connect will only apply encryption once the app is approved. To understand more on admin authorization, please see [app authorization.](./app-authorization.md)

## Recommendations on Decrypting Datasets after Data Delivery

Below is our standard recommendation for decryption. Once the encrypted data is delivered, the customer is solely responsible for decryption. Data Connect does not offer any hands-on support to help decrypt the data after data delivery.

### Pre-requisites

Ensure your Azure Key Vault is set up correctly with the instructions mentioned in [Using Azure Key Vault for Custom Encryption](./data-connect-custom-encryption.md#using-azure-key-vault-for-custom-encryption) 

### About metadata and encryption

We use the public portion of the RSA key pair to encrypt the decryption key. You can use its corresponding private portion to decrypt the decryption key after data delivery. Microsoft can safely store your decryption key, only your application can decrypt the decryption key by using the private key. Only you have access to the private key. The decryption key is an AES 256-bit symmetric key used for encrypting the file. 

Your application needs to reverse the encryption and compression process to access the original data. To access the customer data from the data drop:

1. Get the file decryption key from the extraction metadata.

2. Decrypt the encryption key with the customer private key (provided in the Azure Key Vault). More information can be found with [Azure Key Vault Decrypt API.](https://learn.microsoft.com/en-us/rest/api/keyvault/keys/decrypt/decrypt?view=rest-keyvault-keys-7.4&tabs=HTTP)

3. Decrypt the entire file with the file encryption key. [Here’s a C# sample.](https://learn.microsoft.com/en-us/dotnet/standard/security/encrypting-data)

### Metadata file

After extraction, you’ll receive a data drop. Each data drop includes a encryptionKeyDetails.json file, with the path of metadata/MoreMetadata/EncryptedDatasets in the root directory. This JSON file includes details about the copy activity with the following schema:

| Field | Description |
| --- | --- |
| DecryptionKeyDetails | The details about the decryption key. |
| PublicKeyVersion | The version of the public key. This is needed for the partner to identify which version of the corresponding private key they should use for decryption. |
| DecryptionKeyValue | The Base-64 representation of the decryption key’s value |
| DecryptionKeyIV | The Base-64 representation of the initialization vector used to create the decryption key |

### About decryption keys

The decryption key comes encrypted as a Base-64 string with the per-customer tenant public key provided in the Azure Key Vault. Decryption keys consist of the following components:

- value – The Base-64 representation of the decryption key’s value. For example: oF8xFGjrhxC2LsrsrUA3eTCWDl2fYlBkUe886jRLnKFwdbH/9SRA+55ekL42JCcL+iXsQNZdMWmy3LnLgk2nSfZ96ecU/++sOM7QB/6kWrS2Wmg+5XCW5FErodnyBZKCbOo1RETgrxTH8YlcoLX5319VCmBleSMxgitn0Jl+VCM+NjfE87oPWyLo+vifaBtFnIgSOkzKh20dZm/Ue1AxXQlYQ/WptHBRa4Lmza/oXgbTpqk9Y+Mw+4IhVtHbCdcEt0DqQ0FRb/qjlwMPaYqOlZ5GxFTiQFsAtYVTpnvcffkDBp1gzlOL2iLhudc66PP4h6v4cBxHx6RTz8bO4KiaQg==
- iv – The Base-64 representation of the initialization vector used to create the decryption key. For example: vLvaqqAN8GaYI9gGuX1bsQ==

### About encoding

There are a few encoding details to be aware of during the decryption process. The following data contains these encoding types:

- Decryption Key: UTF-8
- Decryption Key IV: UTF-8
- Padding for AES – CBC / PKCS5 PKCS7 in C# is the same as PKCS5 in Java

Also, the output of the Azure Key Vault Decrypt REST API is Base-64 URL encoded. You’ll need to decode the value from Base-64URL to bytes, and then encode the result to Base-64.

Make sure you take these encoding differences into account when you decrypt the data. If encoded data is incorrectly decrypted, you might get an error like this: Invalid AES key length: 88 bytes.


## Eligibility for Data Connect Datasets

The following datasets are eligible for encryption for Data Connect: 

1. All datasets for Azure Active Directory
2. All datasets for Outlook and Exchange Online
3. All datasets for Microsoft Teams
4. All datasets for Microsoft Groups
5. All datasets for OneDrive and SharePoint

The following datasets are NOT yet eligible for Data Connect. We are working to enable them shortly!

1.	All datasets for Viva Insights

> [NOTE]
> If your application has encryption enabled and contains a mix of eligible and non-eligible datasets, only the eligible datasets will be encrypted.
