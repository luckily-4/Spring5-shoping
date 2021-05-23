package com.lingshi.Service.Impl;

import com.lingshi.Dao.Impl.MessageDaoImpl;
import com.lingshi.Dao.MessageDao;
import com.lingshi.Model.Message;
import com.lingshi.Model.PabeBean;
import com.lingshi.Service.MessageService;

import java.util.List;

public class MessageServiceImpl implements MessageService {
      private  MessageDao dao =new MessageDaoImpl();
    @Override
    public List<Message> findAll() {
        return dao.findAll();
    }

    @Override
    public void delete(String id) {
        dao.delete(Integer.parseInt(id));
    }

    @Override
    public void addMessage(Message message) {
        dao.addMessage(message);
    }

    @Override
    public PabeBean<Message> findMessageByPage(String _currentPage, String _rows) {
        int currentPage = Integer.parseInt(_currentPage);
        int rows = Integer.parseInt(_rows);

        if(currentPage<=0){
            currentPage=1;
        }


        PabeBean<Message> pb = new PabeBean<Message>();
        pb.setCurrentPage(currentPage);

        int totalCount = dao.findTotalCount();
        pb.setTotalCount(totalCount);
        int start = (currentPage - 1) * rows;
        List<Message> list = dao.findByPage(start, rows);
        pb.setList(list);
        int totalPage=(totalCount % rows) ==0 ? totalCount/rows :( totalCount/rows +1);
        pb.setTotalPage(totalPage);
        return pb;

    }

    @Override
    public void updateUser(Message message) {
        dao.updateUser(message);
    }


}
