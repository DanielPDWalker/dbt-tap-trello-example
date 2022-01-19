-- Assert that the total number of cards in trello_vw_cards_per_board equals the amount of cards in trello_cards.

select
    count(*)
from {{ref('trello_cards')}}
where id_board notnull
having not count(*) = (select sum(total_cards)
                        from {{ref('trello_vw_cards_per_board')}})