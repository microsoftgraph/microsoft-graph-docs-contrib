---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD002 MD041 -->

A Microsoft 365 administrator can approve or deny consent requests. This can be done via the Microsoft 365 Admin Center or programmatically via PowerShell. When you run a pipeline and trigger a privileged access management (PAM) request, the request is attached to your user account that owns the service principal used by the pipeline. Even if the account is part of the approver group you set up, you can't use it to approve the PAM request because self-approvals are not allowed. If you try, you'll get an error message in the PAM portal: "Requestor and approver are the same. Self-approval is not allowed." For development, you'll want to have a second account in addition to the admin who approves requests. Both the submitter and the approver must have active Exchange Online accounts..

## Approve consent requests

# [Microsoft 365 admin center](#tab/Microsoft365)

1. Open a browser and go to your [Microsoft 365 admin center](https://admin.microsoft.com).

1. To approve or deny consent requests, go to [Privileged Access](https://portal.office.com/adminportal/home#/Settings/PrivilegedAccess).

1. Select a pending **Data Access Request**.

1. In **Data Access Request**, click **Approve**.

    ![A screenshot showing a data access request pending consent approval in the Microsoft 365 admin center.](../concepts/images/data-connect-m365-approve.png)
1. After a moment,  you will be able to view the status page for the activity update, which will indicate that it is currently in the process of _extracting data_.

   <!-- ![A screenshot showing the Azure portal UI for the Data Factory service where the load status is now showing as "Extracting data".](../concepts/images/data-connect-adf-extraction-approved.png) -->

1. The data extraction process can take some time, depending on the size of your Microsoft 365 tenant.

# [PowerShell](#tab/PowerShell)

1. Open Windows PowerShell.
1. Ensure that your PowerShell session has enabled remotely signed scripts.

    ```powershell
    Set-ExecutionPolicy RemoteSigned
    ```

1. Connect to Exchange Online.

    1. To obtain a sign-in credential, run the following PowerShell command. Make sure to sign in using a user other than the one who created and started the Azure Data Factory pipeline. The user should have the **global administrator** role applied and be a group member with the right to approve data requests in Microsoft 365. It should also have multi-factor authentication enabled.

        ```powershell
        $UserCredential = Get-Credential
        ```

    1. Create a new Exchange Online PowerShell session and load (import) it.

        ```powershell
        $Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.protection.outlook.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection
        Import-PSSession $Session -DisableNameChecking
        ```

        > [!IMPORTANT]
        > After you finish the session, disconnect using the PowerShell command `Remove-PSSession $Session`. Exchange Online only allows three concurrent remote PowerShell sessions to protect against denial-of-service (DoS) attacks. If you simply close the PowerShell window, it will leave the connection open.

1. To get a list of all pending data requests from Microsoft Graph Data Connect, run the following PowerShell command:

    ```powershell
    Get-ElevatedAccessRequest | where {$_.RequestStatus -eq 'Pending'} | select RequestorUPN, Service, Identity, RequestedAccess | fl
    ```

    - Examine the list of data access requests returned. In the following image, you can see two pending requests.

        ![A screenshot showing a list of pending requests formatted as a list in a PowerShell console.](../concepts/images/data-connect-ps-pending-requests.png)

1. Approve data access returned in the previous step by copying the identity GUID of the request and executing the following PowerShell command.

    > [!NOTE]
    > Replace the GUID in the following code snippet with the GUID from the results of the previous step.

    ```powershell
    Approve-ElevatedAccessRequest -RequestId fa041379-0000-0000-0000-7cd5691484bd -Comment 'approval request granted'
    ```

1. After a moment,  you will be able to view the status page for the activity update, which will indicate that it is currently in the process of _extracting data_.

   <!-- ![A screenshot showing the Azure portal UI for the Data Factory service where the load status is now showing as "Extracting data".](../concepts/images/data-connect-adf-extraction-approved.png) -->

1. The data extraction process can take some time, depending on the size of your Microsoft 365 tenant.

---

## Verify extracted data from Microsoft 365 to Azure Blob Storage

1. Open a browser and go to your [Azure portal](https://portal.azure.com/#home).

1. Sign in using an account with **global administrator** rights to your Azure AD and Microsoft 365 tenants.

1. In the **Recent** list of resources, select the **Azure Storage account** you created previously in this tutorial.

1. Go to the sidebar navigation menu and click **Storage browser**, then select **Blob containers**. From there, choose the specific container that you created in this tutorial, which you configured as the destination for the extracted data in the Azure Data Factory pipeline. You should be able to see the data stored within this container.
