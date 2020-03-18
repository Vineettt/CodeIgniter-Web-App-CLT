
    <section id="team">
        <div class="container">
            <div class="row">
                <div class="col">
                    <img src="<?=base_url()?>assets/img/<?=$flagImg?>" class="img-fluid mx-auto d-block">
                    <h5 class="text-center">Team Name : <?=$teamName?></h5>
                    <h5 class="text-center">Country Name : <?=$countryName?></h5>
                </div>
            </div>
            <div class="row">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach($team as $key=>$player) : ?>
                                <tr>
                                    <td><?=$key+1?></td>
                                    <td><?=$player['player_name']?></td>
                                    <td><a href="<?=base_url(); ?>team/player/<?=$player['player_id']?>">Player Info</a></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
    <!-- <section id="teams">
        <div class="container">
            <div class="row">
                <?php foreach($teams as $team) : ?>
                <div class="col-md-6">
                    <div class="box">
                        <img src="assets/img/<?=$team['flag-src']?>" alt="matches" class="img-fluid mx-auto d-block">
                        <h5 class="text-center">Team Name : <?=$team['team_name']?></h5>
                        <a href="<?=base_url(); ?>team/<?=$team['team_id']?>">Team Info</a>
                    </div>
                </div>
                <?php endforeach; ?>
            </div>
        </div>
    </section> -->