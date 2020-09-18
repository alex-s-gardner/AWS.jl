# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: sso_admin
using AWS.Compat
using AWS.UUIDs
"""
    AttachManagedPolicyToPermissionSet()

Attaches an IAM managed policy ARN to a permission set.

# Required Parameters
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
- `ManagedPolicyArn`: The IAM managed policy ARN to be attached to a permission set.
- `PermissionSetArn`: The ARN of the PermissionSet that the managed policy should be attached to.

"""

attach_managed_policy_to_permission_set(InstanceArn, ManagedPolicyArn, PermissionSetArn; aws_config::AWSConfig=global_aws_config()) = sso_admin("AttachManagedPolicyToPermissionSet", Dict{String, Any}("InstanceArn"=>InstanceArn, "ManagedPolicyArn"=>ManagedPolicyArn, "PermissionSetArn"=>PermissionSetArn); aws_config=aws_config)
attach_managed_policy_to_permission_set(InstanceArn, ManagedPolicyArn, PermissionSetArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("AttachManagedPolicyToPermissionSet", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceArn"=>InstanceArn, "ManagedPolicyArn"=>ManagedPolicyArn, "PermissionSetArn"=>PermissionSetArn), args)); aws_config=aws_config)

"""
    CreateAccountAssignment()

Assigns access to a principal for a specified AWS account using a specified permission set.  The term principal here refers to a user or group that is defined in AWS SSO. 

# Required Parameters
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
- `PermissionSetArn`: The ARN of the permission set that the admin wants to grant the principal access to.
- `PrincipalId`: The identifier of the principal.
- `PrincipalType`: The entity type for which the assignment will be created.
- `TargetId`: The identifier for the chosen target.
- `TargetType`: The entity type for which the assignment will be created.

"""

create_account_assignment(InstanceArn, PermissionSetArn, PrincipalId, PrincipalType, TargetId, TargetType; aws_config::AWSConfig=global_aws_config()) = sso_admin("CreateAccountAssignment", Dict{String, Any}("InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn, "PrincipalId"=>PrincipalId, "PrincipalType"=>PrincipalType, "TargetId"=>TargetId, "TargetType"=>TargetType); aws_config=aws_config)
create_account_assignment(InstanceArn, PermissionSetArn, PrincipalId, PrincipalType, TargetId, TargetType, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("CreateAccountAssignment", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn, "PrincipalId"=>PrincipalId, "PrincipalType"=>PrincipalType, "TargetId"=>TargetId, "TargetType"=>TargetType), args)); aws_config=aws_config)

"""
    CreatePermissionSet()

Creates a permission set within a specified SSO instance.

# Required Parameters
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
- `Name`: The name of the PermissionSet.

# Optional Parameters
- `Description`: The description of the PermissionSet.
- `RelayState`: Used to redirect users within the application during the federation authentication process.
- `SessionDuration`: The length of time that the application user sessions are valid in the ISO-8601 standard.
- `Tags`: The tags to attach to the new PermissionSet.
"""

create_permission_set(InstanceArn, Name; aws_config::AWSConfig=global_aws_config()) = sso_admin("CreatePermissionSet", Dict{String, Any}("InstanceArn"=>InstanceArn, "Name"=>Name); aws_config=aws_config)
create_permission_set(InstanceArn, Name, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("CreatePermissionSet", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceArn"=>InstanceArn, "Name"=>Name), args)); aws_config=aws_config)

"""
    DeleteAccountAssignment()

Deletes a principal's access from a specified AWS account using a specified permission set.

# Required Parameters
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
- `PermissionSetArn`: The ARN of the permission set that will be used to remove access.
- `PrincipalId`: The identifier of the principal.
- `PrincipalType`: The entity type for which the assignment will be deleted.
- `TargetId`: The identifier for the chosen target.
- `TargetType`: The entity type for which the assignment will be deleted.

"""

delete_account_assignment(InstanceArn, PermissionSetArn, PrincipalId, PrincipalType, TargetId, TargetType; aws_config::AWSConfig=global_aws_config()) = sso_admin("DeleteAccountAssignment", Dict{String, Any}("InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn, "PrincipalId"=>PrincipalId, "PrincipalType"=>PrincipalType, "TargetId"=>TargetId, "TargetType"=>TargetType); aws_config=aws_config)
delete_account_assignment(InstanceArn, PermissionSetArn, PrincipalId, PrincipalType, TargetId, TargetType, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("DeleteAccountAssignment", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn, "PrincipalId"=>PrincipalId, "PrincipalType"=>PrincipalType, "TargetId"=>TargetId, "TargetType"=>TargetType), args)); aws_config=aws_config)

"""
    DeleteInlinePolicyFromPermissionSet()

Deletes the inline policy from a specified permission set.

# Required Parameters
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
- `PermissionSetArn`: The ARN of the permission set that will be used to remove access.

"""

delete_inline_policy_from_permission_set(InstanceArn, PermissionSetArn; aws_config::AWSConfig=global_aws_config()) = sso_admin("DeleteInlinePolicyFromPermissionSet", Dict{String, Any}("InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn); aws_config=aws_config)
delete_inline_policy_from_permission_set(InstanceArn, PermissionSetArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("DeleteInlinePolicyFromPermissionSet", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn), args)); aws_config=aws_config)

"""
    DeletePermissionSet()

Deletes the specified permission set.

# Required Parameters
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
- `PermissionSetArn`: The ARN of the permission set that should be deleted.

"""

delete_permission_set(InstanceArn, PermissionSetArn; aws_config::AWSConfig=global_aws_config()) = sso_admin("DeletePermissionSet", Dict{String, Any}("InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn); aws_config=aws_config)
delete_permission_set(InstanceArn, PermissionSetArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("DeletePermissionSet", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn), args)); aws_config=aws_config)

"""
    DescribeAccountAssignmentCreationStatus()

Describes the status of the assignment creation request.

# Required Parameters
- `AccountAssignmentCreationRequestId`: The identifier that is used to track the request operation progress.
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.

"""

describe_account_assignment_creation_status(AccountAssignmentCreationRequestId, InstanceArn; aws_config::AWSConfig=global_aws_config()) = sso_admin("DescribeAccountAssignmentCreationStatus", Dict{String, Any}("AccountAssignmentCreationRequestId"=>AccountAssignmentCreationRequestId, "InstanceArn"=>InstanceArn); aws_config=aws_config)
describe_account_assignment_creation_status(AccountAssignmentCreationRequestId, InstanceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("DescribeAccountAssignmentCreationStatus", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountAssignmentCreationRequestId"=>AccountAssignmentCreationRequestId, "InstanceArn"=>InstanceArn), args)); aws_config=aws_config)

"""
    DescribeAccountAssignmentDeletionStatus()

Describes the status of the assignment deletion request.

# Required Parameters
- `AccountAssignmentDeletionRequestId`: The identifier that is used to track the request operation progress.
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.

"""

describe_account_assignment_deletion_status(AccountAssignmentDeletionRequestId, InstanceArn; aws_config::AWSConfig=global_aws_config()) = sso_admin("DescribeAccountAssignmentDeletionStatus", Dict{String, Any}("AccountAssignmentDeletionRequestId"=>AccountAssignmentDeletionRequestId, "InstanceArn"=>InstanceArn); aws_config=aws_config)
describe_account_assignment_deletion_status(AccountAssignmentDeletionRequestId, InstanceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("DescribeAccountAssignmentDeletionStatus", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountAssignmentDeletionRequestId"=>AccountAssignmentDeletionRequestId, "InstanceArn"=>InstanceArn), args)); aws_config=aws_config)

"""
    DescribePermissionSet()

Gets the details of the permission set.

# Required Parameters
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
- `PermissionSetArn`: The ARN of the permission set.

"""

describe_permission_set(InstanceArn, PermissionSetArn; aws_config::AWSConfig=global_aws_config()) = sso_admin("DescribePermissionSet", Dict{String, Any}("InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn); aws_config=aws_config)
describe_permission_set(InstanceArn, PermissionSetArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("DescribePermissionSet", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn), args)); aws_config=aws_config)

"""
    DescribePermissionSetProvisioningStatus()

Describes the status for the given permission set provisioning request.

# Required Parameters
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
- `ProvisionPermissionSetRequestId`: The identifier that is provided by the ProvisionPermissionSet call to retrieve the current status of the provisioning workflow.

"""

describe_permission_set_provisioning_status(InstanceArn, ProvisionPermissionSetRequestId; aws_config::AWSConfig=global_aws_config()) = sso_admin("DescribePermissionSetProvisioningStatus", Dict{String, Any}("InstanceArn"=>InstanceArn, "ProvisionPermissionSetRequestId"=>ProvisionPermissionSetRequestId); aws_config=aws_config)
describe_permission_set_provisioning_status(InstanceArn, ProvisionPermissionSetRequestId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("DescribePermissionSetProvisioningStatus", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceArn"=>InstanceArn, "ProvisionPermissionSetRequestId"=>ProvisionPermissionSetRequestId), args)); aws_config=aws_config)

"""
    DetachManagedPolicyFromPermissionSet()

Detaches the attached IAM managed policy ARN from the specified permission set.

# Required Parameters
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
- `ManagedPolicyArn`: The IAM managed policy ARN to be attached to a permission set.
- `PermissionSetArn`: The ARN of the PermissionSet from which the policy should be detached.

"""

detach_managed_policy_from_permission_set(InstanceArn, ManagedPolicyArn, PermissionSetArn; aws_config::AWSConfig=global_aws_config()) = sso_admin("DetachManagedPolicyFromPermissionSet", Dict{String, Any}("InstanceArn"=>InstanceArn, "ManagedPolicyArn"=>ManagedPolicyArn, "PermissionSetArn"=>PermissionSetArn); aws_config=aws_config)
detach_managed_policy_from_permission_set(InstanceArn, ManagedPolicyArn, PermissionSetArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("DetachManagedPolicyFromPermissionSet", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceArn"=>InstanceArn, "ManagedPolicyArn"=>ManagedPolicyArn, "PermissionSetArn"=>PermissionSetArn), args)); aws_config=aws_config)

"""
    GetInlinePolicyForPermissionSet()

Obtains the inline policy assigned to the permission set.

# Required Parameters
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
- `PermissionSetArn`: The ARN of the permission set.

"""

get_inline_policy_for_permission_set(InstanceArn, PermissionSetArn; aws_config::AWSConfig=global_aws_config()) = sso_admin("GetInlinePolicyForPermissionSet", Dict{String, Any}("InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn); aws_config=aws_config)
get_inline_policy_for_permission_set(InstanceArn, PermissionSetArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("GetInlinePolicyForPermissionSet", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn), args)); aws_config=aws_config)

"""
    ListAccountAssignmentCreationStatus()

Lists the status of the AWS account assignment creation requests for a specified SSO instance.

# Required Parameters
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.

# Optional Parameters
- `Filter`: Filters results based on the passed attribute value.
- `MaxResults`: The maximum number of results to display for the assignment.
- `NextToken`: The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.
"""

list_account_assignment_creation_status(InstanceArn; aws_config::AWSConfig=global_aws_config()) = sso_admin("ListAccountAssignmentCreationStatus", Dict{String, Any}("InstanceArn"=>InstanceArn); aws_config=aws_config)
list_account_assignment_creation_status(InstanceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("ListAccountAssignmentCreationStatus", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceArn"=>InstanceArn), args)); aws_config=aws_config)

"""
    ListAccountAssignmentDeletionStatus()

Lists the status of the AWS account assignment deletion requests for a specified SSO instance.

# Required Parameters
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.

# Optional Parameters
- `Filter`: Filters results based on the passed attribute value.
- `MaxResults`: The maximum number of results to display for the assignment.
- `NextToken`: The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.
"""

list_account_assignment_deletion_status(InstanceArn; aws_config::AWSConfig=global_aws_config()) = sso_admin("ListAccountAssignmentDeletionStatus", Dict{String, Any}("InstanceArn"=>InstanceArn); aws_config=aws_config)
list_account_assignment_deletion_status(InstanceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("ListAccountAssignmentDeletionStatus", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceArn"=>InstanceArn), args)); aws_config=aws_config)

"""
    ListAccountAssignments()

Lists the assignee of the specified AWS account with the specified permission set.

# Required Parameters
- `AccountId`: The identifier of the AWS account from which to list the assignments.
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
- `PermissionSetArn`: The ARN of the permission set from which to list assignments.

# Optional Parameters
- `MaxResults`: The maximum number of results to display for the assignment.
- `NextToken`: The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.
"""

list_account_assignments(AccountId, InstanceArn, PermissionSetArn; aws_config::AWSConfig=global_aws_config()) = sso_admin("ListAccountAssignments", Dict{String, Any}("AccountId"=>AccountId, "InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn); aws_config=aws_config)
list_account_assignments(AccountId, InstanceArn, PermissionSetArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("ListAccountAssignments", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn), args)); aws_config=aws_config)

"""
    ListAccountsForProvisionedPermissionSet()

Lists all the AWS accounts where the specified permission set is provisioned.

# Required Parameters
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
- `PermissionSetArn`: The ARN of the PermissionSet from which the associated AWS accounts will be listed.

# Optional Parameters
- `MaxResults`: The maximum number of results to display for the PermissionSet.
- `NextToken`: The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.
- `ProvisioningStatus`: The permission set provisioning status for an AWS account.
"""

list_accounts_for_provisioned_permission_set(InstanceArn, PermissionSetArn; aws_config::AWSConfig=global_aws_config()) = sso_admin("ListAccountsForProvisionedPermissionSet", Dict{String, Any}("InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn); aws_config=aws_config)
list_accounts_for_provisioned_permission_set(InstanceArn, PermissionSetArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("ListAccountsForProvisionedPermissionSet", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn), args)); aws_config=aws_config)

"""
    ListInstances()

Lists the SSO instances that the caller has access to.

# Optional Parameters
- `MaxResults`: The maximum number of results to display for the instance.
- `NextToken`: The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.
"""

list_instances(; aws_config::AWSConfig=global_aws_config()) = sso_admin("ListInstances"; aws_config=aws_config)
list_instances(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("ListInstances", args; aws_config=aws_config)

"""
    ListManagedPoliciesInPermissionSet()

Lists the IAM managed policy that is attached to a specified permission set.

# Required Parameters
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
- `PermissionSetArn`: The ARN of the PermissionSet whose managed policies will be listed.

# Optional Parameters
- `MaxResults`: The maximum number of results to display for the PermissionSet.
- `NextToken`: The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.
"""

list_managed_policies_in_permission_set(InstanceArn, PermissionSetArn; aws_config::AWSConfig=global_aws_config()) = sso_admin("ListManagedPoliciesInPermissionSet", Dict{String, Any}("InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn); aws_config=aws_config)
list_managed_policies_in_permission_set(InstanceArn, PermissionSetArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("ListManagedPoliciesInPermissionSet", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn), args)); aws_config=aws_config)

"""
    ListPermissionSetProvisioningStatus()

Lists the status of the permission set provisioning requests for a specified SSO instance.

# Required Parameters
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.

# Optional Parameters
- `Filter`: Filters results based on the passed attribute value.
- `MaxResults`: The maximum number of results to display for the assignment.
- `NextToken`: The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.
"""

list_permission_set_provisioning_status(InstanceArn; aws_config::AWSConfig=global_aws_config()) = sso_admin("ListPermissionSetProvisioningStatus", Dict{String, Any}("InstanceArn"=>InstanceArn); aws_config=aws_config)
list_permission_set_provisioning_status(InstanceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("ListPermissionSetProvisioningStatus", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceArn"=>InstanceArn), args)); aws_config=aws_config)

"""
    ListPermissionSets()

Lists the PermissionSets in an SSO instance.

# Required Parameters
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.

# Optional Parameters
- `MaxResults`: The maximum number of results to display for the assignment.
- `NextToken`: The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.
"""

list_permission_sets(InstanceArn; aws_config::AWSConfig=global_aws_config()) = sso_admin("ListPermissionSets", Dict{String, Any}("InstanceArn"=>InstanceArn); aws_config=aws_config)
list_permission_sets(InstanceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("ListPermissionSets", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceArn"=>InstanceArn), args)); aws_config=aws_config)

"""
    ListPermissionSetsProvisionedToAccount()

Lists all the permission sets that are provisioned to a specified AWS account.

# Required Parameters
- `AccountId`: The identifier of the AWS account from which to list the assignments.
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.

# Optional Parameters
- `MaxResults`: The maximum number of results to display for the assignment.
- `NextToken`: The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.
- `ProvisioningStatus`: The status object for the permission set provisioning operation.
"""

list_permission_sets_provisioned_to_account(AccountId, InstanceArn; aws_config::AWSConfig=global_aws_config()) = sso_admin("ListPermissionSetsProvisionedToAccount", Dict{String, Any}("AccountId"=>AccountId, "InstanceArn"=>InstanceArn); aws_config=aws_config)
list_permission_sets_provisioned_to_account(AccountId, InstanceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("ListPermissionSetsProvisionedToAccount", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AccountId"=>AccountId, "InstanceArn"=>InstanceArn), args)); aws_config=aws_config)

"""
    ListTagsForResource()

Lists the tags that are attached to a specified resource.

# Required Parameters
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
- `ResourceArn`: The ARN of the resource with the tags to be listed.

# Optional Parameters
- `NextToken`: The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.
"""

list_tags_for_resource(InstanceArn, ResourceArn; aws_config::AWSConfig=global_aws_config()) = sso_admin("ListTagsForResource", Dict{String, Any}("InstanceArn"=>InstanceArn, "ResourceArn"=>ResourceArn); aws_config=aws_config)
list_tags_for_resource(InstanceArn, ResourceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("ListTagsForResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceArn"=>InstanceArn, "ResourceArn"=>ResourceArn), args)); aws_config=aws_config)

"""
    ProvisionPermissionSet()

The process by which a specified permission set is provisioned to the specified target.

# Required Parameters
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
- `PermissionSetArn`: The ARN of the permission set.
- `TargetType`: The entity type for which the assignment will be created.

# Optional Parameters
- `TargetId`: The identifier for the chosen target.
"""

provision_permission_set(InstanceArn, PermissionSetArn, TargetType; aws_config::AWSConfig=global_aws_config()) = sso_admin("ProvisionPermissionSet", Dict{String, Any}("InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn, "TargetType"=>TargetType); aws_config=aws_config)
provision_permission_set(InstanceArn, PermissionSetArn, TargetType, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("ProvisionPermissionSet", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn, "TargetType"=>TargetType), args)); aws_config=aws_config)

"""
    PutInlinePolicyToPermissionSet()

Attaches an IAM inline policy to a permission set.

# Required Parameters
- `InlinePolicy`: The IAM inline policy to attach to a PermissionSet.
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
- `PermissionSetArn`: The ARN of the permission set.

"""

put_inline_policy_to_permission_set(InlinePolicy, InstanceArn, PermissionSetArn; aws_config::AWSConfig=global_aws_config()) = sso_admin("PutInlinePolicyToPermissionSet", Dict{String, Any}("InlinePolicy"=>InlinePolicy, "InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn); aws_config=aws_config)
put_inline_policy_to_permission_set(InlinePolicy, InstanceArn, PermissionSetArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("PutInlinePolicyToPermissionSet", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InlinePolicy"=>InlinePolicy, "InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn), args)); aws_config=aws_config)

"""
    TagResource()

Associates a set of tags with a specified resource.

# Required Parameters
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
- `ResourceArn`: The ARN of the resource with the tags to be listed.
- `Tags`: A set of key-value pairs that are used to manage the resource.

"""

tag_resource(InstanceArn, ResourceArn, Tags; aws_config::AWSConfig=global_aws_config()) = sso_admin("TagResource", Dict{String, Any}("InstanceArn"=>InstanceArn, "ResourceArn"=>ResourceArn, "Tags"=>Tags); aws_config=aws_config)
tag_resource(InstanceArn, ResourceArn, Tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("TagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceArn"=>InstanceArn, "ResourceArn"=>ResourceArn, "Tags"=>Tags), args)); aws_config=aws_config)

"""
    UntagResource()

Disassociates a set of tags from a specified resource.

# Required Parameters
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
- `ResourceArn`: The ARN of the resource with the tags to be listed.
- `TagKeys`: The keys of tags that are attached to the resource.

"""

untag_resource(InstanceArn, ResourceArn, TagKeys; aws_config::AWSConfig=global_aws_config()) = sso_admin("UntagResource", Dict{String, Any}("InstanceArn"=>InstanceArn, "ResourceArn"=>ResourceArn, "TagKeys"=>TagKeys); aws_config=aws_config)
untag_resource(InstanceArn, ResourceArn, TagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("UntagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceArn"=>InstanceArn, "ResourceArn"=>ResourceArn, "TagKeys"=>TagKeys), args)); aws_config=aws_config)

"""
    UpdatePermissionSet()

Updates an existing permission set.

# Required Parameters
- `InstanceArn`: The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
- `PermissionSetArn`: The ARN of the permission set.

# Optional Parameters
- `Description`: The description of the PermissionSet.
- `RelayState`: Used to redirect users within the application during the federation authentication process.
- `SessionDuration`: The length of time that the application user sessions are valid for in the ISO-8601 standard.
"""

update_permission_set(InstanceArn, PermissionSetArn; aws_config::AWSConfig=global_aws_config()) = sso_admin("UpdatePermissionSet", Dict{String, Any}("InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn); aws_config=aws_config)
update_permission_set(InstanceArn, PermissionSetArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = sso_admin("UpdatePermissionSet", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("InstanceArn"=>InstanceArn, "PermissionSetArn"=>PermissionSetArn), args)); aws_config=aws_config)