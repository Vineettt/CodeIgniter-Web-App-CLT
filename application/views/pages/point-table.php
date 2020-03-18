<section id="pointTable">
    <div class="container">
        <div class="row">
            <div class="col">
                <h4 class="text-center">Point Table</h4>
            </div>
        </div>
        <div class="row">
            <div class="col">
            <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Team</th>
                                <th>Point</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach($teams as $key=>$team) : ?>
                                <tr>
                                    <td><?=++$key?></td>
                                    <td><?=$team['team_name']?></td>
                                    <td><?=$team['team_point']?></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>