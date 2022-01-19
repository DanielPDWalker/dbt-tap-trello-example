with trello_cards as (

    select * from {{ref('trello_cards')}}

),

trello_boards as (

    select * from {{ref('trello_boards')}}
),

vw_cards_per_board as (

    select
        count(*) as total_cards
        ,  tb.name as board_name
    from trello_cards tc
    left join trello_boards tb on tb.id = tc.id_board
    group by tb.name

)

select * from vw_cards_per_board