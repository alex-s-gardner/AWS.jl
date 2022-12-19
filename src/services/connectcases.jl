# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: connectcases
using AWS.Compat
using AWS.UUIDs

"""
    batch_get_field(domain_id, fields)
    batch_get_field(domain_id, fields, params::Dict{String,<:Any})

Returns the description for the list of fields in the request parameters.

# Arguments
- `domain_id`: The unique identifier of the Cases domain.
- `fields`: A list of unique field identifiers.

"""
function batch_get_field(
    domainId, fields; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/fields-batch",
        Dict{String,Any}("fields" => fields);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function batch_get_field(
    domainId,
    fields,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/fields-batch",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("fields" => fields), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    batch_put_field_options(domain_id, field_id, options)
    batch_put_field_options(domain_id, field_id, options, params::Dict{String,<:Any})

Creates and updates a set of field options for a single select field in a Cases domain.

# Arguments
- `domain_id`: The unique identifier of the Cases domain.
- `field_id`: The unique identifier of a field.
- `options`: A list of FieldOption objects.

"""
function batch_put_field_options(
    domainId, fieldId, options; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectcases(
        "PUT",
        "/domains/$(domainId)/fields/$(fieldId)/options",
        Dict{String,Any}("options" => options);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function batch_put_field_options(
    domainId,
    fieldId,
    options,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "PUT",
        "/domains/$(domainId)/fields/$(fieldId)/options",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("options" => options), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_case(domain_id, fields, template_id)
    create_case(domain_id, fields, template_id, params::Dict{String,<:Any})

Creates a case in the specified Cases domain. Case system and custom fields are taken as an
array id/value pairs with a declared data types.   customer_id is a required field when
creating a case.

# Arguments
- `domain_id`: The unique identifier of the Cases domain.
- `fields`: An array of objects with field ID (matching ListFields/DescribeField) and value
  union data.
- `template_id`: A unique identifier of a template.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`: A unique, case-sensitive identifier that you provide to ensure the
  idempotency of the request. If not provided, the Amazon Web Services SDK populates this
  field. For more information about idempotency, see Making retries safe with idempotent APIs.
"""
function create_case(
    domainId, fields, templateId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/cases",
        Dict{String,Any}(
            "fields" => fields, "templateId" => templateId, "clientToken" => string(uuid4())
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_case(
    domainId,
    fields,
    templateId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/cases",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "fields" => fields,
                    "templateId" => templateId,
                    "clientToken" => string(uuid4()),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_domain(name)
    create_domain(name, params::Dict{String,<:Any})

Creates a domain, which is a container for all case data, such as cases, fields, templates
and layouts. Each Amazon Connect instance can be associated with only one Cases domain.
This will not associate your connect instance to Cases domain. Instead, use the Amazon
Connect CreateIntegrationAssociation API.

# Arguments
- `name`: The name for your Cases domain. It must be unique for your Amazon Web Services
  account.

"""
function create_domain(name; aws_config::AbstractAWSConfig=global_aws_config())
    return connectcases(
        "POST",
        "/domains",
        Dict{String,Any}("name" => name);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_domain(
    name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectcases(
        "POST",
        "/domains",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("name" => name), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_field(domain_id, name, type)
    create_field(domain_id, name, type, params::Dict{String,<:Any})

Creates a field in the Cases domain. This field is used to define the case object model
(that is, defines what data can be captured on cases) in a Cases domain.

# Arguments
- `domain_id`: The unique identifier of the Cases domain.
- `name`: The name of the field.
- `type`: Defines the data type, some system constraints, and default display of the field.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"description"`: The description of the field.
"""
function create_field(
    domainId, name, type; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/fields",
        Dict{String,Any}("name" => name, "type" => type);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_field(
    domainId,
    name,
    type,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/fields",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("name" => name, "type" => type), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_layout(content, domain_id, name)
    create_layout(content, domain_id, name, params::Dict{String,<:Any})

Creates a layout in the Cases domain. Layouts define the following configuration in the top
section and More Info tab of the Cases user interface:   Fields to display to the users
Field ordering    Title and Status fields cannot be part of layouts since they are not
configurable.

# Arguments
- `content`: Information about which fields will be present in the layout, and information
  about the order of the fields.
- `domain_id`: The unique identifier of the Cases domain.
- `name`: The name of the layout. It must be unique for the Cases domain.

"""
function create_layout(
    content, domainId, name; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/layouts",
        Dict{String,Any}("content" => content, "name" => name);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_layout(
    content,
    domainId,
    name,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/layouts",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("content" => content, "name" => name), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_related_item(case_id, content, domain_id, type)
    create_related_item(case_id, content, domain_id, type, params::Dict{String,<:Any})

Creates a related item (comments, tasks, and contacts) and associates it with a case.  A
Related Item is a resource that is associated with a case. It may or may not have an
external identifier linking it to an external resource (for example, a contactArn). All
Related Items have their own internal identifier, the relatedItemArn. Examples of related
items include comments and contacts.

# Arguments
- `case_id`: A unique identifier of the case.
- `content`: The content of a related item to be created.
- `domain_id`: The unique identifier of the Cases domain.
- `type`: The type of a related item.

"""
function create_related_item(
    caseId, content, domainId, type; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/cases/$(caseId)/related-items/",
        Dict{String,Any}("content" => content, "type" => type);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_related_item(
    caseId,
    content,
    domainId,
    type,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/cases/$(caseId)/related-items/",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("content" => content, "type" => type), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_template(domain_id, name)
    create_template(domain_id, name, params::Dict{String,<:Any})

Creates a template in the Cases domain. This template is used to define the case object
model (that is, to define what data can be captured on cases) in a Cases domain. A template
must have a unique name within a domain, and it must reference existing field IDs and
layout IDs. Additionally, multiple fields with same IDs are not allowed within the same
Template. A template can be either Active or Inactive, as indicated by its status. Inactive
templates cannot be used to create cases.

# Arguments
- `domain_id`: The unique identifier of the Cases domain.
- `name`: A name for the template. It must be unique per domain.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"description"`: A brief description of the template.
- `"layoutConfiguration"`: Configuration of layouts associated to the template.
- `"requiredFields"`: A list of fields that must contain a value for a case to be
  successfully created with this template.
- `"status"`: The status of the template.
"""
function create_template(domainId, name; aws_config::AbstractAWSConfig=global_aws_config())
    return connectcases(
        "POST",
        "/domains/$(domainId)/templates",
        Dict{String,Any}("name" => name);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_template(
    domainId,
    name,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/templates",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("name" => name), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_case(case_id, domain_id, fields)
    get_case(case_id, domain_id, fields, params::Dict{String,<:Any})

Returns information about a specific case if it exists.

# Arguments
- `case_id`: A unique identifier of the case.
- `domain_id`: The unique identifier of the Cases domain.
- `fields`: A list of unique field identifiers.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"nextToken"`: The token for the next set of results. Use the value returned in the
  previous response in the next request to retrieve the next set of results.
"""
function get_case(
    caseId, domainId, fields; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/cases/$(caseId)",
        Dict{String,Any}("fields" => fields);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_case(
    caseId,
    domainId,
    fields,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/cases/$(caseId)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("fields" => fields), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_case_event_configuration(domain_id)
    get_case_event_configuration(domain_id, params::Dict{String,<:Any})

Returns the case event publishing configuration.

# Arguments
- `domain_id`: The unique identifier of the Cases domain.

"""
function get_case_event_configuration(
    domainId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/case-event-configuration";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_case_event_configuration(
    domainId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/case-event-configuration",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_domain(domain_id)
    get_domain(domain_id, params::Dict{String,<:Any})

Returns information about a specific domain if it exists.

# Arguments
- `domain_id`: The unique identifier of the Cases domain.

"""
function get_domain(domainId; aws_config::AbstractAWSConfig=global_aws_config())
    return connectcases(
        "POST",
        "/domains/$(domainId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_domain(
    domainId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "POST",
        "/domains/$(domainId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_layout(domain_id, layout_id)
    get_layout(domain_id, layout_id, params::Dict{String,<:Any})

Returns the details for the requested layout.

# Arguments
- `domain_id`: The unique identifier of the Cases domain.
- `layout_id`: The unique identifier of the layout.

"""
function get_layout(domainId, layoutId; aws_config::AbstractAWSConfig=global_aws_config())
    return connectcases(
        "POST",
        "/domains/$(domainId)/layouts/$(layoutId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_layout(
    domainId,
    layoutId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/layouts/$(layoutId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_template(domain_id, template_id)
    get_template(domain_id, template_id, params::Dict{String,<:Any})

Returns the details for the requested template.

# Arguments
- `domain_id`: The unique identifier of the Cases domain.
- `template_id`: A unique identifier of a template.

"""
function get_template(
    domainId, templateId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/templates/$(templateId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_template(
    domainId,
    templateId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/templates/$(templateId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_cases_for_contact(contact_arn, domain_id)
    list_cases_for_contact(contact_arn, domain_id, params::Dict{String,<:Any})

Lists cases for a given contact.

# Arguments
- `contact_arn`: A unique identifier of a contact in Amazon Connect.
- `domain_id`: The unique identifier of the Cases domain.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return per page.
- `"nextToken"`: The token for the next set of results. Use the value returned in the
  previous response in the next request to retrieve the next set of results.
"""
function list_cases_for_contact(
    contactArn, domainId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/list-cases-for-contact",
        Dict{String,Any}("contactArn" => contactArn);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_cases_for_contact(
    contactArn,
    domainId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/list-cases-for-contact",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("contactArn" => contactArn), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_domains()
    list_domains(params::Dict{String,<:Any})

Lists all cases domains in the Amazon Web Services account. Each list item is a condensed
summary object of the domain.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return per page.
- `"nextToken"`: The token for the next set of results. Use the value returned in the
  previous response in the next request to retrieve the next set of results.
"""
function list_domains(; aws_config::AbstractAWSConfig=global_aws_config())
    return connectcases(
        "POST", "/domains-list"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_domains(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectcases(
        "POST",
        "/domains-list",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_field_options(domain_id, field_id)
    list_field_options(domain_id, field_id, params::Dict{String,<:Any})

Lists all of the field options for a field identifier in the domain.

# Arguments
- `domain_id`: The unique identifier of the Cases domain.
- `field_id`: The unique identifier of a field.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return per page.
- `"nextToken"`: The token for the next set of results. Use the value returned in the
  previous response in the next request to retrieve the next set of results.
- `"values"`: A list of FieldOption values to filter on for ListFieldOptions.
"""
function list_field_options(
    domainId, fieldId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/fields/$(fieldId)/options-list";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_field_options(
    domainId,
    fieldId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/fields/$(fieldId)/options-list",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_fields(domain_id)
    list_fields(domain_id, params::Dict{String,<:Any})

Lists all fields in a Cases domain.

# Arguments
- `domain_id`: The unique identifier of the Cases domain.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return per page.
- `"nextToken"`: The token for the next set of results. Use the value returned in the
  previous response in the next request to retrieve the next set of results.
"""
function list_fields(domainId; aws_config::AbstractAWSConfig=global_aws_config())
    return connectcases(
        "POST",
        "/domains/$(domainId)/fields-list";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_fields(
    domainId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/fields-list",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_layouts(domain_id)
    list_layouts(domain_id, params::Dict{String,<:Any})

Lists all layouts in the given cases domain. Each list item is a condensed summary object
of the layout.

# Arguments
- `domain_id`: The unique identifier of the Cases domain.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return per page.
- `"nextToken"`: The token for the next set of results. Use the value returned in the
  previous response in the next request to retrieve the next set of results.
"""
function list_layouts(domainId; aws_config::AbstractAWSConfig=global_aws_config())
    return connectcases(
        "POST",
        "/domains/$(domainId)/layouts-list";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_layouts(
    domainId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/layouts-list",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_tags_for_resource(arn)
    list_tags_for_resource(arn, params::Dict{String,<:Any})

Lists tags for a resource.

# Arguments
- `arn`: The Amazon Resource Name (ARN)

"""
function list_tags_for_resource(arn; aws_config::AbstractAWSConfig=global_aws_config())
    return connectcases(
        "GET", "/tags/$(arn)"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_tags_for_resource(
    arn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectcases(
        "GET",
        "/tags/$(arn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_templates(domain_id)
    list_templates(domain_id, params::Dict{String,<:Any})

Lists all of the templates in a Cases domain. Each list item is a condensed summary object
of the template.

# Arguments
- `domain_id`: The unique identifier of the Cases domain.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return per page.
- `"nextToken"`: The token for the next set of results. Use the value returned in the
  previous response in the next request to retrieve the next set of results.
- `"status"`: A list of status values to filter on.
"""
function list_templates(domainId; aws_config::AbstractAWSConfig=global_aws_config())
    return connectcases(
        "POST",
        "/domains/$(domainId)/templates-list";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_templates(
    domainId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/templates-list",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    put_case_event_configuration(domain_id, event_bridge)
    put_case_event_configuration(domain_id, event_bridge, params::Dict{String,<:Any})

API for adding case event publishing configuration

# Arguments
- `domain_id`: The unique identifier of the Cases domain.
- `event_bridge`: Configuration to enable EventBridge case event delivery and determine
  what data is delivered.

"""
function put_case_event_configuration(
    domainId, eventBridge; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectcases(
        "PUT",
        "/domains/$(domainId)/case-event-configuration",
        Dict{String,Any}("eventBridge" => eventBridge);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function put_case_event_configuration(
    domainId,
    eventBridge,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "PUT",
        "/domains/$(domainId)/case-event-configuration",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("eventBridge" => eventBridge), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    search_cases(domain_id)
    search_cases(domain_id, params::Dict{String,<:Any})

Searches for cases within their associated Cases domain. Search results are returned as a
paginated list of abridged case documents.

# Arguments
- `domain_id`: The unique identifier of the Cases domain.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"fields"`: The list of field identifiers to be returned as part of the response.
- `"filter"`: A list of filter objects.
- `"maxResults"`: The maximum number of cases to return. The current maximum supported
  value is 25. This is also the default value when no other value is provided.
- `"nextToken"`: The token for the next set of results. Use the value returned in the
  previous response in the next request to retrieve the next set of results.
- `"searchTerm"`: A word or phrase used to perform a quick search.
- `"sorts"`: A list of sorts where each sort specifies a field and their sort order to be
  applied to the results.
"""
function search_cases(domainId; aws_config::AbstractAWSConfig=global_aws_config())
    return connectcases(
        "POST",
        "/domains/$(domainId)/cases-search";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function search_cases(
    domainId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/cases-search",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    search_related_items(case_id, domain_id)
    search_related_items(case_id, domain_id, params::Dict{String,<:Any})

Searches for related items that are associated with a case.  If no filters are provided,
this returns all related items associated with a case.

# Arguments
- `case_id`: A unique identifier of the case.
- `domain_id`: The unique identifier of the Cases domain.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"filters"`: The list of types of related items and their parameters to use for filtering.
- `"maxResults"`: The maximum number of results to return per page.
- `"nextToken"`: The token for the next set of results. Use the value returned in the
  previous response in the next request to retrieve the next set of results.
"""
function search_related_items(
    caseId, domainId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/cases/$(caseId)/related-items-search";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function search_related_items(
    caseId,
    domainId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "POST",
        "/domains/$(domainId)/cases/$(caseId)/related-items-search",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(arn, tags)
    tag_resource(arn, tags, params::Dict{String,<:Any})

Adds tags to a resource.

# Arguments
- `arn`: The Amazon Resource Name (ARN)
- `tags`: A map of of key-value pairs that represent tags on a resource. Tags are used to
  organize, track, or control access for this resource.

"""
function tag_resource(arn, tags; aws_config::AbstractAWSConfig=global_aws_config())
    return connectcases(
        "POST",
        "/tags/$(arn)",
        Dict{String,Any}("tags" => tags);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function tag_resource(
    arn,
    tags,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "POST",
        "/tags/$(arn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tags" => tags), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    untag_resource(arn, tag_keys)
    untag_resource(arn, tag_keys, params::Dict{String,<:Any})

Untags a resource.

# Arguments
- `arn`: The Amazon Resource Name (ARN)
- `tag_keys`: List of tag keys.

"""
function untag_resource(arn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config())
    return connectcases(
        "DELETE",
        "/tags/$(arn)",
        Dict{String,Any}("tagKeys" => tagKeys);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function untag_resource(
    arn,
    tagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "DELETE",
        "/tags/$(arn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tagKeys" => tagKeys), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_case(case_id, domain_id, fields)
    update_case(case_id, domain_id, fields, params::Dict{String,<:Any})

Updates the values of fields on a case. Fields to be updated are received as an array of
id/value pairs identical to the CreateCase input . If the action is successful, the service
sends back an HTTP 200 response with an empty HTTP body.

# Arguments
- `case_id`: A unique identifier of the case.
- `domain_id`: The unique identifier of the Cases domain.
- `fields`: An array of objects with fieldId (matching ListFields/DescribeField) and value
  union data, structured identical to CreateCase.

"""
function update_case(
    caseId, domainId, fields; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectcases(
        "PUT",
        "/domains/$(domainId)/cases/$(caseId)",
        Dict{String,Any}("fields" => fields);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_case(
    caseId,
    domainId,
    fields,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "PUT",
        "/domains/$(domainId)/cases/$(caseId)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("fields" => fields), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_field(domain_id, field_id)
    update_field(domain_id, field_id, params::Dict{String,<:Any})

Updates the properties of an existing field.

# Arguments
- `domain_id`: The unique identifier of the Cases domain.
- `field_id`: The unique identifier of a field.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"description"`: The description of a field.
- `"name"`: The name of the field.
"""
function update_field(domainId, fieldId; aws_config::AbstractAWSConfig=global_aws_config())
    return connectcases(
        "PUT",
        "/domains/$(domainId)/fields/$(fieldId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_field(
    domainId,
    fieldId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "PUT",
        "/domains/$(domainId)/fields/$(fieldId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_layout(domain_id, layout_id)
    update_layout(domain_id, layout_id, params::Dict{String,<:Any})

Updates the attributes of an existing layout. If the action is successful, the service
sends back an HTTP 200 response with an empty HTTP body. A ValidationException is returned
when you add non-existent fieldIds to a layout.  Title and Status fields cannot be part of
layouts because they are not configurable.

# Arguments
- `domain_id`: The unique identifier of the Cases domain.
- `layout_id`: The unique identifier of the layout.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"content"`: Information about which fields will be present in the layout, the order of
  the fields, and a read-only attribute of the field.
- `"name"`: The name of the layout. It must be unique per domain.
"""
function update_layout(
    domainId, layoutId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectcases(
        "PUT",
        "/domains/$(domainId)/layouts/$(layoutId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_layout(
    domainId,
    layoutId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "PUT",
        "/domains/$(domainId)/layouts/$(layoutId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_template(domain_id, template_id)
    update_template(domain_id, template_id, params::Dict{String,<:Any})

Updates the attributes of an existing template. The template attributes that can be
modified include name, description, layoutConfiguration, requiredFields, and status. At
least one of these attributes must not be null. If a null value is provided for a given
attribute, that attribute is ignored and its current value is preserved.

# Arguments
- `domain_id`: The unique identifier of the Cases domain.
- `template_id`: A unique identifier for the template.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"description"`: A brief description of the template.
- `"layoutConfiguration"`: Configuration of layouts associated to the template.
- `"name"`: The name of the template. It must be unique per domain.
- `"requiredFields"`: A list of fields that must contain a value for a case to be
  successfully created with this template.
- `"status"`: The status of the template.
"""
function update_template(
    domainId, templateId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectcases(
        "PUT",
        "/domains/$(domainId)/templates/$(templateId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_template(
    domainId,
    templateId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectcases(
        "PUT",
        "/domains/$(domainId)/templates/$(templateId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
