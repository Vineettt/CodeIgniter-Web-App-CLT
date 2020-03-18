<?php
	class Pages_model extends CI_Model{
		public function __construct(){
			$this->load->database();
        }
        public function teams(){
            $this->db->select('countries.country_name, countries.flag-src, teams.team_name, teams.team_id, teams.team_point');
            $this->db->from('teams');
            $this->db->join('countries', 'teams.country_id = countries.country_id');
            $query = $this->db->get();
            return $query->result_array();
        }
        public function matches(){
            $this->db->select('venue.venue_name, venue.venue_location, matches.matches_date');
            $this->db->from('matches');
            $this->db->join('venue', 'matches.venue_id = venue.venue_id');
            $query = $this->db->get();
            return $query->result_array();
        }
        public function TeamA(){
            $this->db->select('*');
            $this->db->from('matches');
            $this->db->join('teams', 'matches.teamA = teams.team_id');
            $this->db->order_by("match_id", "asc");
            $query = $this->db->get();
            return $query->result_array();

        }
        public function TeamB(){
            $this->db->select('*');
            $this->db->from('matches');
            $this->db->join('teams', 'matches.teamB = teams.team_id');
            $this->db->order_by("match_id", "asc");
            $query = $this->db->get();
            return $query->result_array();
        }
        public function results(){
            $this->db->select('*');
            $this->db->from('results');
            $this->db->join('matches', 'matches.match_id = results.result_id');
            $query = $this->db->get();
            return $query->result_array();
        }
    }
