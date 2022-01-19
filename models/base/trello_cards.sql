with source as (

    select * from {{ source('trello_source', 'cards') }}

),

renamed as (

    select
        , check_item_states
        , closed
        , custom_field_items
        , date_last_activity
        , desc
        , due
        , due_complete
        , due_reminder
        , id
        , id_attachment_cover
        , id_board
        , id_checklists
        , id_labels
        , id_list
        , id_members
        , id_members_voted
        , id_short
        , is_template
        , labels
        , manual_cover_attachment
        , name
        , pos
        , short_link
        , short_url
        , start
        , subscribed
        , url
        , badges__attachments as badges_attachments
        , badges__attachments_by_type__trello__board as badges_attachments_by_type_trello_board
        , badges__attachments_by_type__trello__card as badges_attachments_by_type_trello_card
        , badges__check_items as badges_check_items
        , badges__check_items_checked as badges_check_items_checked
        , badges__check_items_earliest_due as badges_check_items_earliest_due
        , badges__comments as badges_comments
        , badges__description as badges_description
        , badges__due as badges_due
        , badges__due_complete as badges_due_complete
        , badges__fogbugz as badges_fogbugz
        , badges__location as badges_location
        , badges__subscribed as badges_subscribed
        , badges__viewing_member_voted as badges_viewing_member_voted
        , badges__votes as badges_votes
        , cover__brightness as cover_brightness
        , cover__color as cover_color
        , cover__id_attachment as conver_id_attachment
        , cover__id_uploaded_background as cover_id_uploaded_background
        , cover__size as cover_size
    from source

)

select * from renamed
