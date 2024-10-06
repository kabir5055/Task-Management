import { Card, Avatar, Text, Title, Divider } from '@mantine/core';

const CompletedTaskList = ({ completedTaskUsers }) => {
  return (
    <Card
      className='mb-2'
      bg='none'
      withBorder
      style={{ marginBottom: '1.4rem' }}
    >
      <Title
        order={3}
        ml={15}
      >
        Users by Completed tasks
      </Title>
      <Divider my={14} />

      {completedTaskUsers.map(user => (
        <div
          key={user.assigned_to_user_id}
          className='flex items-center justify-between'
          style={{
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'flex-start',
          }}
        >
          <Avatar
            src={user.assigned_to_user.avatar}
            alt={user.assigned_to_user.name}
            radius='xl'
          />
          <div style={{ marginLeft: '1rem' }}>
            <Text weight={500}>{user.assigned_to_user.name}</Text>
            <Text
              size='sm'
              color='dimmed'
            >
              {user.completed_tasks_count} tasks completed
            </Text>
          </div>
        </div>
      ))}
    </Card>
  );
};

export default CompletedTaskList;
