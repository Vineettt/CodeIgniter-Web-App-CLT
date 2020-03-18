<?php
	class Team_model extends CI_Model{
		public function __construct(){
			$this->load->database();
        }
        public function team($slug){
            $this->db->select('countries.country_name, countries.flag-src,teams.team_name, players.player_id, players.player_name');
            $this->db->from('players');
            $this->db->where('players.team_id', $slug);
            $this->db->join('teams', 'teams.team_id = players.team_id');
            $this->db->join('countries', 'countries.country_id = teams.team_id');
            $query = $this->db->get();
            return $query->result_array();
        }
        public function player($slug){
            $this->db->select('countries.country_name, players.player-img,teams.team_name, players.player_id, players.player_name, players.player_description, players.player_score, players.player_wicket, players.player_dob');
            $this->db->from('players');
            $this->db->where('players.player_id', $slug);
            $this->db->join('teams', 'teams.team_id = players.team_id');
            $this->db->join('countries', 'countries.country_id = teams.team_id');
            $query = $this->db->get();
            return $query->result_array();
        }
    }
