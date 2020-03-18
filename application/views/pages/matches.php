<section id="matches">
    <div class="container">
        <div class="row">
            <div class="col">
                <h4 class="text-center">Matches</h4>
            </div>
        </div>
        <div class="row">
            <?php $today = date("Y-m-d");?>
            <?php foreach($matches as  $key=>$player) : ?>
            <div class="col col-lg-6">
                <div class="box">
                    <h5 class="text-center"><?=$teamA[$key]['team_name']?><span>&nbsp;&nbsp;&nbsp;&nbsp;VS&nbsp;&nbsp;&nbsp;&nbsp;</span><?=$teamB[$key]['team_name']?></h5>
                    <h6>Venue: <span><?=$matches[$key]['venue_name']?></span></h6>
                    <h6>Location: <span><?=$matches[$key]['venue_location']?></span></h6>
                    <h6>Date: <span><?=$matches[$key]['matches_date']?></span></h6>
                    <?php if ($today > $matches[$key]['matches_date']): ?>
                    <h6><?=$teamA[$key]['team_name']?> : <span><?=$result[$key]['teamAScore']?></span></h6>
                    <h6><?=$teamB[$key]['team_name']?> : <span><?=$result[$key]['teamBScore']?></span></h6>
                    <?php if ($result[$key]['teamAScore'] > $result[$key]['teamBScore']): ?>
                    <h5><?=$teamA[$key]['team_name']?> wins the match.</h5>
                    <?php elseif ($result[$key]['teamAScore'] > $result[$key]['teamBScore']): ?>
                    <h5><?=$teamB[$key]['team_name']?> wins the match.</h5>
                    <?php else: ?>
                    <h5>This match was Draw.</h5>
                    <?php endif; ?>
                    <?php elseif ($today < $matches[$key]['matches_date']): ?>
                    <h6 class="text-center">Will be coming Soon</h6>
                    <?php else: ?>
                    <h6 class="text-center">This match is Today.</h6>
                    <?php endif; ?>
                </div>
            </div>
            <?php endforeach; ?>
        </div>
    </div>
</section>