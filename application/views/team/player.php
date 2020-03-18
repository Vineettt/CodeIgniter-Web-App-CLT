    <section id="player">
        <div class="container">
            <div class="row">
                <div class="col">
                <h5>Description : <span><?php print_r($player[0]['player_description'])?></span></h5>
                <img src="<?=base_url()?>assets/img/<?php print_r($player[0]['player-img'])?>" class="img-fluid mx-auto d-block">
                    <h5 class="text-center">Name : <span><?php print_r($player[0]['player_name'])?></span></h5>
                    <h5 class="text-center">Team Name : <span><?php print_r($player[0]['team_name'])?></span></h5>
                    <h5 class="text-center">Country Name : <span><?php print_r($player[0]['country_name'])?></span></h5>
                    <h5 class="text-center">Score : <span><?php print_r($player[0]['player_score'])?></span></h5>
                    <h5 class="text-center">Wicket : <span><?php print_r($player[0]['player_wicket'])?></span></h5>
                    <h5 class="text-center">DOB : <span><?php print_r($player[0]['player_dob'])?></span></h5>
                </div>
            </div>
        </div>
    </section>