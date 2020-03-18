<?php
    class Team extends CI_Controller {
        public function view($slug = NULL){
            $team = $this->team_model->team($slug);
            $data['title'] = $team[0]['team_name'];
            $data['flagImg'] = $team[0]['flag-src'];
            $data['teamName'] = $team[0]['team_name'];
            $data['countryName'] = $team[0]['country_name'];
            $data['team'] = $team;
            $this->load->view('templates/header', $data);
            $this->load->view('team/index');
            $this->load->view('templates/footer');
        }
        public function player($slug = NULL){
            $player = $this->team_model->player($slug);
            $data['title'] = $player[0]['team_name'];
            $data['player'] = $player;
            $this->load->view('templates/header', $data);
            $this->load->view('team/player');
            $this->load->view('templates/footer');
        }
    }