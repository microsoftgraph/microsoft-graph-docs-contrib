---
title: "Use encryption with Microsoft Graph Data Connect"
description: "Learn how to enable custom dataset encryption with Microsoft Graph Data Connect."
author: "rimisra2"
ms.localizationpriority: high
ms.subservice: "data-connect"
---

# Use encryption with Microsoft Graph Data Connect

The following two types of encryption are available when you use Microsoft Graph Data Connect (Data Connect): 

- **Encryption for data-at-rest**: Customers can use the [Azure data-at-rest](/azure/security/fundamentals/encryption-atrest) encryption feature and customer managed keys when setting up their Azure storage account to ensure that it's properly locked and secure for data delivery. 

- **Encryption for data-in-transit**: Data Connect offers encryption for data-in-transit through our custom encryption with customer-owned keys capability. It also ensures that all data requests between a customer’s Microsoft 365 and Azure resources are secure by using service standards that are [SOC approved](/compliance/regulatory/offering-soc-2).

We recommend that you use [Azure Key Vault (AKV)](/azure/key-vault/general/basic-concepts) to generate and store your public or private keys and refresh them when needed. This article describes the custom encryption feature that can be applied to the requested datasets in an application for a secure data delivery.

## Enable custom encryption with customer-owned keys for data-in-transit

Customers (developers) can use custom encryption in their Data Connect application for an even more secure dataset delivery. To enable the feature, create and set up an AKV to generate RSA keys or ensure your existing AKV has the correct set up with RSA keys. Then, enable encryption when setting up a new Data Connect application or edit an existing one to toggle on encryption and link your current AKV. Data Connect encrypts datasets using authorized public keys from your AKV and delivers them encrypted along with a decryption key. The decryption key will be encrypted by Data Connect and can be decrypted using the customers' private key.

> [!NOTE]
> Custom encryption is not available to customers who are still using the PAM consent process or Managed Data Flows (MDF).

## Enable custom encryption for your Data Connect application

If you have an existing Data Connect application, use the following steps to enable custom encryption:

1. Sign in to the [Azure Portal](https://ms.portal.azure.com). 
    1. Choose **Microsoft Graph Data Connect** and select your current application. 
    2. Choose **properties** > **Single Tenant** and toggle on encryption.
    3. If you do not have an AKV, open a new tab and follow the instructions in [Setting up your Azure Key Vault](./data-connect-custom-encryption.md#using-azure-key-vault-for-custom-encryption). 
    4. Follow the steps in [Using your Azure Key Vault and Generating RSA keys with your Azure Key Vault ](./data-connect-custom-encryption.md#using-azure-key-vault-for-custom-encryption) to ensure that your AKV has the correct role permissions and is populated with RSA keys.
    5. In the drop-down menu on the Data Connect application, select your Azure Key Vault URI (name of the AKV).
    6. Choose **Update Properties** to save. Encryption will be applied when your admin approves the changes to the app properties.

    > [!NOTE]
    > Encryption will only be applied to eligible datasets. The AKV must be set up correctly for datasets to be encrypted.

    ![Screenshot of the Azure portal with Microsoft Graph Data Connect highlighted](images/portal-MGDC.png)
    
    ![Screenshot of an existing app with Properties and Update Properties highlighted](images/existing-app-encryption.png)

If you don't have an existing Data Connect application, use the following steps to create one:

1. Follow the [getting started](/graph/data-connect-quickstart?tabs=NewConsentFlow%2CPAMMicrosoft365%2CAzureSynapsePipeline) guide and use [the simplified onboarding experience](./onboarding-experience-overview.md) to build your Data Connect application.

2.  When you are on the [Register your Microsoft Entra application with Microsoft Graph Data Connect](https://learn.microsoft.com/en-us/graph/data-connect-quickstart?tabs=NewConsentFlow%2CPAMMicrosoft365%2CAzureSynapsePipeline&tutorial-step=4) step, keep in mind of the below:
    1. Fill out the application details on the **Registration Info** page. 
    2. Choose **Enable encryption for datasets**.
    3. For **Key Vault**, from the drop-down menu, select the AKV URI (name of the AKV).
    4. If your AKV doesn't exist, open a new tab and follow the steps in [Setting up your Azure Key Vault](./data-connect-custom-encryption.md#using-azure-key-vault-for-custom-encryption). 
    5. Go back to your Data Connect application tab and look for your AKV in the dropdown to select it. You might need to refresh the page for the AKV to populate in the dropdown.

    > [!NOTE]
    > Encryption will apply to all the eligible datasets requested in the application. Choose the tool tip next to encryption to learn which datasets are eligible.

    ![Screenshot of the the Azure portal with Azure Key Vault and encryption boxed in](images/app-registration-encryption.png) 

4. Fill out the rest of the required application details and submit the application for your Microsoft 365 admin to review. 
    
    > [!NOTE]
    > Make a note of your existing service principal; you will need this later.

5. Now that you have submitted the app, follow the steps in [Using your Azure Key Vault and Generating RSA keys with your Azure Key Vault ](./data-connect-custom-encryption.md#using-azure-key-vault-for-custom-encryption) to ensure that your AKV has the correct role permissions and is populated with RSA keys.

6. Encryption will be applied to all the eligible datasets in the application once your admin approves the app. If you run a pipeline without setting up the correct role permissions and generating RSA keys in your AKV, your requested data will not be encrypted.

## Dataset decryption after data delivery

After encrypted data is delivered, the customer is responsible for data decryption. Data Connect does not decrypt data after delivery. This section describes how to decrypt data after delivery.

### Prerequisites

Ensure that your Azure Key Vault is set up correctly; for details, see [Using Azure Key Vault for custom encryption](./data-connect-custom-encryption.md#using-azure-key-vault-for-custom-encryption). 

### Metadata and encryption

The public part of the RSA key pair is used to encrypt the decryption key. You can use its corresponding private part to decrypt the decryption key after data delivery. Microsoft stores your decryption key; only your application can decrypt the decryption key by using the private key. Only you have access to the private key. The decryption key is an AES 256-bit symmetric key used to encrypt the file. 

Your application needs to reverse the encryption and compression process to access the original data. To access the customer data from the data drop:

1. Get the file decryption key from the extraction metadata.

2. Decrypt the encryption key with the customer private key (provided in the Azure Key Vault). For more information, see [Azure Key Vault decrypt API](/rest/api/keyvault/keys/decrypt/decrypt?view=rest-keyvault-keys-7.4&tabs=HTTP).

3. Decrypt the file by using the file encryption key. For a C# example, see [Encrypting data](/dotnet/standard/security/encrypting-data).

### Metadata file

After extraction, you’ll receive a data drop. Each data drop includes an encryptionKeyDetails.json file, with a metadata/MoreMetadata/EncryptedDatasets path in the root directory. This JSON file includes details about the copy activity. The following table describes the schema.

| Field | Description |
| --- | --- |
| DecryptionKeyDetails | The details about the decryption key. |
| PublicKeyVersion | The version of the public key. This is needed for the partner to identify which version of the corresponding private key they should use for decryption. |
| DecryptionKeyValue | The Base64 representation of the decryption key’s value. |
| DecryptionKeyIV | The Base64 representation of the initialization vector used to create the decryption key. |

### Decryption keys

The decryption key comes encrypted as a Base64 string with the per-customer tenant public key provided in the Azure Key Vault. Decryption keys consist of the following components:

- value – The Base64 representation of the value of the decryption key. For example: `oF8xFGjrhxC2LsrsrUA3eTCWDl2fYlBkUe886jRLnKFwdbH/9SRA+55ekL42JCcL+iXsQNZdMWmy3LnLgk2nSfZ96ecU/++sOM7QB/6kWrS2Wmg+5XCW5FErodnyBZKCbOo1RETgrxTH8YlcoLX5319VCmBleSMxgitn0Jl+VCM+NjfE87oPWyLo+vifaBtFnIgSOkzKh20dZm/Ue1AxXQlYQ/WptHBRa4Lmza/oXgbTpqk9Y+Mw+4IhVtHbCdcEt0DqQ0FRb/qjlwMPaYqOlZ5GxFTiQFsAtYVTpnvcffkDBp1gzlOL2iLhudc66PP4h6v4cBxHx6RTz8bO4KiaQg==`
- iv – The Base64 representation of the initialization vector used to create the decryption key. For example: `vLvaqqAN8GaYI9gGuX1bsQ==`

### Encoding

There are a few encoding details to be aware of during the decryption process. The following data contains these encoding types:

- Decryption Key: UTF-8
- Decryption Key IV: UTF-8
- Padding for AES – CBC / PKCS5 PKCS7 in C# is the same as PKCS5 in Java

Also, the output of the Azure Key Vault Decrypt REST API is Base64 URL encoded. You'll need to decode the value from Base64 URL to bytes, and then encode the result to Base64.

Be sure to take these encoding differences into account when you decrypt the data. If encoded data is incorrectly decrypted, you might get an error like the following: `Invalid AES key length: 88 bytes`.

## Dataset eligiblity for encryption

The following [datasets](/graph/data-connect-datasets) are eligible for encryption for Data Connect: 

- All datasets for Azure Active Directory
- All datasets for Outlook and Exchange Online
- All datasets for Microsoft Teams
- All datasets for Microsoft Groups
- All datasets for OneDrive and SharePoint

The following datasets are not yet eligible for encryption:

- All datasets for Viva Insights

> [!NOTE]
> If your application has encryption enabled and contains a mix of eligible and non-eligible datasets, only the eligible datasets will be encrypted.

## Admin app approval 

Admins use the following process to approve Data Connect apps:

1. Sign in to the [Microsoft 365 admin authorization portal](https://admin.microsoft.com/Adminportal/Home#/Settings/MGDCAdminCenter) with your admin credentials.

2. Choose the **Security & Privacy** tab in **Org settings**, and then select **Microsoft Graph Data Connect applications**, as shown in the following image.
    ![Screenshot with Org settings, the Security & Privacy tab, and Microsoft Graph Data Connect apps highlighted.](images/org-settings-security-and-privacy-data-connect-apps.png)

3.	Select the application that is ready for review. In the **Overview** section of the application details, ensure that encryption is enabled. 
    ![Screenshot of a Data Connect app with Overview and Dataset Encryption highlighted](images/admin-encryption-enabled.png)

4.	On the **Review** section of the application details, ensure that encryption is selected and review the datasets. 
    > [!NOTE]
    > If encryption is enabled during app registration, it will apply to all the eligible datasets in the app.

    ![Screenshot of a Data Connect app with Review and Data Encryption highlighted](images/admin-approves-encryption.png)

5.	After you review the application, select **Approve, Decline, or Cancel**. An action must be taken and Data Connect will only apply encryption after the app is approved. For more information, see [app authorization.](./app-authorization.md)

## Using Azure Key Vault for custom encryption

If you don't have an AKV set up, follow the steps in the Setting up Azure Key Vault tab before you proceed to the next tab.

After you have an existing AKV, go to the Using your Azure Key Vault tab to enable the required role permissions. Then go to the Generating RSA keys with your Azure Key Vault tab to create the required RSA keys in your AKV for custom encryption.

No action is required from the Microsoft 365 admin to enable custom encryption.

# [Setting up your Azure Key Vault](#tab/SettingUpAKV)

1.Sign in to the [Azure portal](https://ms.portal.azure.com) with your developer credentials and choose the **Azure Key Vault** icon.
    ![Screenshot of the the Azure portal with Azure Key Vault highlighted](images/azure-portal-akv.png)

2. If you don't have an existing AKV, choose **Create**. For more information, see [Create a key vault using the Azure portal](/azure/key-vault/general/quick-create-portal).
    ![Screenshot of the Key vaults page with Create highlighted](images/create-akv.png)

3. Choose **Azure role-based access control (recommended)** under **Permission model**. 
    ![Screenshot of the Permissions model section of the AKV registration](images/akv-permission-model.png)

4. On the **Networking** tab, choose **Enable public access** to allow Data Connect to access any public keys that were generated and stored. Data Connect is authorized only to access select public keys. 
    ![Screenshot of the Networking tab of the Azure Key Vault](images/akv-networking.png)

5. Follow the steps and select **Review + Create** when done.

# [Using your Azure Key Vault](#tab/ExistingAKV)

1. Sign in to the [Azure portal](https://ms.portal.azure.com) with your developer credentials and choose the **Azure Key Vault** icon.
    ![Screenshot of the the Azure portal with Azure Key Vault boxed in](images/azure-portal-akv.png)

2. Choose your Azure Key Vault; for example, **LoBEncryption Demo**.
    ![Screenshot of the AKVs listed on the home page](images/akv-main-page.png)

3. On the **Access Control (IAM)** tab, choose **Add**.
    ![Screenshot of Azure Key Vault for an app with Access control (IAM) and Add highlighted](images/akv-access-control.png)

4. Choose **Add role assignment**.
    ![Screenshot with the Add role assignments option highlighted](images/akv-add-role-assignment.png)

5. On the **Role** tab, type **Key Vault Crypto User** and select it, and then choose **Next**.
    ![Screenshot with key vault crypto user highlighted on the role assignment page](images/akv-crypto-user.png)

6. On the **Members** tab, enable **Assign Access to** for **Users, group, and service principal**, and choose **+ Select Members**. 

7. On the left pane, select the correct service principal (the Data Connect application name). This ensures that your Data Connect application can connect to your Azure Key Vault. Choose **Next**.
    ![Screenshot of the Members tab with the Assign Access to and Select members sections highlighted](images/akv-select-service-principal.png)

7. Review the details on the **Review + assign** tab and choose **Review + Assign** on the lower right corner. Your Azure Key Vault can now connect to your Data Connect application.

# [Generating RSA keys with your Azure Key Vault](#tab/AKVKeys)

1. Go to the main Key Vaults page and choose your Azure Key Vault; for example, **LoBEncryption Demo**.
    ![Screenshot of the AKVs listed on the home page](images/akv-main-page.png)

2. Select **Keys**.

    ![Screenshot of the left window pane with Keys highlighted](images/akv-keys.png)

3. Choose **Generate/Import**.
    ![Screenshot of the application page with Generate/import highlighted](images/akv-generate-keys.png)

4. Generate an RSA key and name your key to be your Microsoft Entra tenant ID. Make sure that it has a unique name (you should only have one key per Microsoft Entra tenant ID).
    ![Screenshot of the Create a key page with fields highlighted](images/akv-generate-RSA-key.png)

    > [!NOTE]
    > The RSA key must be set to 2048 bits for key size and must have an expiration date or it won't be valid. 

5. Fill out the details and choose **Create**.


