    <section id="teams">
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
    </section>