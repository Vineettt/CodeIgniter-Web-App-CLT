
<?php
    class Pages extends CI_Controller {
        public function view($page = 'home'){
            if ( ! file_exists(APPPATH.'views/pages/'.$page.'.php')){
                    show_404();
            }            
            if($page == 'teams'){
                $data['teams'] = $this->pages_model->teams();
            }
            if($page == 'matches'){
                $data['matches'] = $this->pages_model->matches();
                $data['teamA'] = $this->pages_model->teamA();
                $data['teamB'] = $this->pages_model->teamB();
                $data['result'] = $this->pages_model->results();
            }
            if($page == 'point-table'){
				$data['teams'] = $this->pages_model->teams();
            }
            $title = str_replace('-', ' ', $page);
            $data['title'] = ucfirst($title);
            $this->load->view('templates/header', $data);
            $this->load->view('pages/'.$page);
            $this->load->view('templates/footer');
        }
    }
?>