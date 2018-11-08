# Get started with Microsoft Graph data connect (preview)

Before you can use Microsoft Graph data connect, an Office 365 administrator must take two actions, both of which enable the ability for the admin to control data movement through Privileged Access Management (PAM). 

1. Give consent to opt in to Microsoft Graph data connect through the Microsoft 365 Admin Portal in the Services & add-ins page. This will  allow data movement requests to Microsoft Azure (that is, keep full control over the data, but allow Azure resources to access it). No data is transferred unless approval for a specific pipeline is provided later.
2. Set an approver group within the Office 365 subscription. The approver group will be tasked with approving specific requests for access to data.

## Next steps

Congratulations! You are now ready to start building intelligent applications with Azure tooling. For detailed step-by-step instructions, see the [Microsoft Graph data connect training module](https://github.com/microsoftgraph/msgraph-training-dataconnect/blob/master/Lab.md). For a sample application and additional documentation, see the [Microsoft Graph data connect GitHub repo](https://github.com/OfficeDev/MS-Graph-Data-Connect/wiki). 
