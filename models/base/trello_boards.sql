with source as (

    select * from {{ source('trello_source', 'boards') }}

),

renamed as (

    select
        , closed
        , creation_method
        , date_last_activity
        , date_last_view
        , date_plugin_disable
        , desc
        , desc_data
        , enterprise_owned
        , id
        , id_board_source
        , id_enterprise
        , id_organization
        , id_tags
        , ix_update
        , memberships
        , name
        , pinned
        , power_ups
        , premium_features
        , short_link
        , short_url
        , starred
        , subscribed
        , template_gallery
        , url
        , label_names__black as label_names_black
        , label_names__blue as label_names_blue
        , label_names__green as label_names_green
        , label_names__lime as label_names_lime
        , label_names__orange as label_names_orange
        , label_names__pink as label_names_pink
        , label_names__purple as label_names_purple
        , label_names__red as label_names_red
        , label_names__sky as label_names_sky
        , label_names__yellow as label_names_yellow
        , limits__attachments__per_board__disable_at as limits_attachments_per_board_disable_at
        , limits__attachments__per_board__status as limits_attachments_per_board_status
        , limits__attachments__per_board__warn_at as limits_attachments_per_board_warn_at
        , prefs__background as prefs_background
        , prefs__background_bottom_color as prefs_background_bottom_color
        , prefs__background_brightness as prefs_background_brightness
        , prefs__background_image as prefs_background_image
        , prefs__background_image_scaled as prefs_background_image_scaled
        , prefs__background_tile as prefs_background_tile
        , prefs__background_top_color as prefs_background_top_color
        , prefs__calendar_feed_enabled as prefs_calendar_feed_enabled
        , prefs__can_be_enterprise as prefs_can_be_enterprise
        , prefs__can_be_org as prefs_can_be_org
        , prefs__can_be_private as prefs_can_be_private
        , prefs__can_be_public as prefs_can_be_public
        , prefs__can_invite as prefs_can_invite
        , prefs__card_aging as prefs_card_aging
        , prefs__card_covers as prefs_card_covers
        , prefs__comments as prefs_comments
        , prefs__hide_votes as prefs_hide_votes
        , prefs__invitations as prefs_invitations
        , prefs__is_template as prefs_is_template
        , prefs__permission_level as prefs_permission_level
        , prefs__self_join as prefs_self_join
        , prefs__voting as prefs_voting
    from source

)

select * from renamed
